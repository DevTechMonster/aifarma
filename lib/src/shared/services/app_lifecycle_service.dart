import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_lifecycle_service.g.dart';

/// Service to manage app lifecycle and handle background/foreground transitions
class AppLifecycleService extends WidgetsBindingObserver {
  static final AppLifecycleService _instance = AppLifecycleService._internal();
  factory AppLifecycleService() => _instance;
  AppLifecycleService._internal();

  final StreamController<AppLifecycleState> _lifecycleController = 
      StreamController<AppLifecycleState>.broadcast();
  
  bool _isInitialized = false;
  AppLifecycleState _currentState = AppLifecycleState.resumed;

  /// Stream of app lifecycle state changes
  Stream<AppLifecycleState> get lifecycleStream => _lifecycleController.stream;

  /// Current app lifecycle state
  AppLifecycleState get currentState => _currentState;

  /// Whether the app is currently in the background
  bool get isInBackground => _currentState != AppLifecycleState.resumed;

  /// Initialize the lifecycle service
  void initialize() {
    if (_isInitialized) return;
    
    WidgetsBinding.instance.addObserver(this);
    _isInitialized = true;
    log('AppLifecycleService initialized', name: 'AppLifecycleService');
  }

  /// Dispose the lifecycle service
  void dispose() {
    if (!_isInitialized) return;
    
    WidgetsBinding.instance.removeObserver(this);
    _lifecycleController.close();
    _isInitialized = false;
    log('AppLifecycleService disposed', name: 'AppLifecycleService');
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final previousState = _currentState;
    _currentState = state;
    
    log(
      'App lifecycle changed: $previousState -> $state',
      name: 'AppLifecycleService',
    );

    _lifecycleController.add(state);

    // Handle specific state transitions
    switch (state) {
      case AppLifecycleState.paused:
        _onAppPaused();
        break;
      case AppLifecycleState.resumed:
        _onAppResumed();
        break;
      case AppLifecycleState.detached:
        _onAppDetached();
        break;
      case AppLifecycleState.inactive:
        _onAppInactive();
        break;
      case AppLifecycleState.hidden:
        _onAppHidden();
        break;
    }
  }

  void _onAppPaused() {
    log('App paused - entering background', name: 'AppLifecycleService');
    // App is going to background
  }

  void _onAppResumed() {
    log('App resumed - returning to foreground', name: 'AppLifecycleService');
    // App is returning to foreground
  }

  void _onAppDetached() {
    log('App detached - being terminated', name: 'AppLifecycleService');
    // App is being terminated
  }

  void _onAppInactive() {
    log('App inactive - temporary interruption', name: 'AppLifecycleService');
    // App is temporarily inactive (e.g., incoming call)
  }

  void _onAppHidden() {
    log('App hidden - minimized', name: 'AppLifecycleService');
    // App is hidden/minimized
  }
}

/// Provider for AppLifecycleService
@riverpod
AppLifecycleService appLifecycleService(Ref ref) {
  final service = AppLifecycleService();
  
  // Initialize the service when the provider is first accessed
  service.initialize();
  
  // Dispose when the provider is disposed
  ref.onDispose(() {
    service.dispose();
  });
  
  return service;
}

/// Provider to watch app lifecycle state
@riverpod
Stream<AppLifecycleState> appLifecycleState(Ref ref) {
  final service = ref.watch(appLifecycleServiceProvider);
  return service.lifecycleStream;
}

/// Provider to check if app is in background
@riverpod
bool isAppInBackground(Ref ref) {
  final service = ref.watch(appLifecycleServiceProvider);
  return service.isInBackground;
}


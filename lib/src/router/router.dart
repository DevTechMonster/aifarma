import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';

// Authentication
import '../authentication/provider/auth_provider.dart';
import '../authentication/view/login.dart';
import '../authentication/view/signup.dart';
import '../authentication/view/forgot_password.dart';

// Private screens
import '../chat/view/chat_screen.dart';
import '../profile/view/profile_screen.dart';
import '../settings/view/settings_screen.dart';

// Routes
import 'routes.dart';

part 'router.g.dart';

class AuthChangeNotifier extends ChangeNotifier {
  AuthChangeNotifier(this._ref) {
    _ref.listen(authProvider, (previous, next) {
      notifyListeners();
    });
  }

  final Ref _ref;
}

@riverpod
// ignore: unsupported_provider_value
AuthChangeNotifier authChangeNotifier(Ref ref) {
  final notifier = AuthChangeNotifier(ref);
  ref.onDispose(() => notifier.dispose());
  return notifier;
}

@riverpod
// ignore: unsupported_provider_value
GoRouter router(Ref ref) {
  final authNotifier = ref.watch(authChangeProvider);

  return GoRouter(
    initialLocation: RoutesName.login,
    refreshListenable: authNotifier,
    redirect: (context, state) {
      final authState = ref.read(authProvider);
      final isAuthenticated = authState.isAuthenticated;
      final isOnAuthPage = state.fullPath == RoutesName.login ||
          state.fullPath == RoutesName.signup ||
          state.fullPath == RoutesName.forgotPassword;

      // If not authenticated and trying to access private route, redirect to login
      if (!isAuthenticated && !isOnAuthPage) {
        return RoutesName.login;
      }

      // If authenticated and on auth page, redirect to home
      if (isAuthenticated && isOnAuthPage) {
        return RoutesName.home;
      }

      // No redirect needed
      return null;
    },
    routes: [
      // Public routes
      GoRoute(
        path: RoutesName.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: RoutesName.signup,
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: RoutesName.forgotPassword,
        builder: (context, state) => const ForgotPasswordScreen(),
      ),

      // Private routes
      GoRoute(
        path: RoutesName.home,
        builder: (context, state) => const ChatScreen(),
      ),
      GoRoute(
        path: RoutesName.profile,
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: RoutesName.settings,
        builder: (context, state) => const SettingsScreen(),
      ),
    ],
  );
}


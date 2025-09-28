# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

### Core Flutter Commands
```bash
# Run the app in debug mode (defaults to production environment)
flutter run

# Run on specific device
flutter run -d chrome                    # Web
flutter run -d macos                     # macOS
flutter devices                          # List available devices

# Development tools
flutter clean                            # Clean build files
flutter pub get                          # Install dependencies
flutter pub upgrade                      # Upgrade dependencies
flutter analyze                          # Static analysis
flutter test                             # Run all tests
flutter test test/widget_test.dart       # Run specific test
```

### Environment-Specific Commands
```bash
# Run with different environments
flutter run -t lib/main_dev.dart         # Development environment
flutter run -t lib/main_staging.dart     # Staging environment
flutter run -t lib/main_production.dart  # Production environment (default)

# Build for different environments and flavors
# Development builds
flutter build apk --flavor dev -t lib/main_dev.dart
flutter build appbundle --flavor dev -t lib/main_dev.dart

# Staging builds
flutter build apk --flavor staging -t lib/main_staging.dart
flutter build appbundle --flavor staging -t lib/main_staging.dart

# Production builds
flutter build apk --flavor production -t lib/main_production.dart
flutter build appbundle --flavor production -t lib/main_production.dart

# iOS builds (requires macOS)
flutter build ios --flavor dev -t lib/main_dev.dart
flutter build ios --flavor staging -t lib/main_staging.dart
flutter build ios --flavor production -t lib/main_production.dart

# Web builds (environment-specific)
flutter build web -t lib/main_dev.dart
flutter build web -t lib/main_staging.dart
flutter build web -t lib/main_production.dart
```

### Linting and Code Quality
```bash
# Analysis (uses flutter_lints)
flutter analyze

# No formatter configured - relies on IDE formatting
```

## Code Architecture

### Current Structure
The app now uses **environment-based configuration** with multiple entry points:
- `lib/main.dart`: Main application logic with environment-aware UI
- `lib/main_dev.dart`: Development environment entry point
- `lib/main_staging.dart`: Staging environment entry point
- `lib/main_production.dart`: Production environment entry point
- `lib/config/app_config.dart`: Environment configuration management
- `MyApp`: Root application widget using AppConfig for theming and titles
- `MyHomePage`: Main screen showing environment info and counter functionality
- State management: Simple `setState()` pattern

### Dependencies
- **Minimal setup**: Only `cupertino_icons` for iOS-style icons
- **Linting**: `flutter_lints` for code quality
- **No state management**: Uses built-in `setState()`
- **No networking**: No HTTP client configured
- **No routing**: Single screen app

### Platform Configuration
- **Android**: Uses Kotlin DSL, Java 11 target, multiple build flavors (dev/staging/production)
  - Base application ID: `my.aifarma`
  - Dev: `my.aifarma.dev` with "AiFarma Dev" app name
  - Staging: `my.aifarma.staging` with "AiFarma Staging" app name
  - Production: `my.aifarma` with "AiFarma" app name
- **iOS**: Standard Xcode configuration (flavors need additional iOS setup)
- **Web**: PWA-ready with custom branding colors (#0175C2)
- **Debug signing**: Android uses debug keystore (not production-ready)

## Development Notes

### Key Files
- `lib/main.dart`: Main application logic with environment-aware UI
- `lib/config/app_config.dart`: Environment configuration and settings
- `lib/main_dev.dart`, `lib/main_staging.dart`, `lib/main_production.dart`: Environment entry points
- `pubspec.yaml`: Dependencies and app configuration
- `test/widget_test.dart`: Widget tests for counter functionality
- `android/app/build.gradle.kts`: Android build configuration with flavors
- `android/app/proguard-rules.pro`: ProGuard configuration for release builds

### Architecture Expansion
When scaling beyond the current template, consider implementing:
- Folder structure (`lib/screens/`, `lib/widgets/`, `lib/services/`, `lib/models/`)
- State management solution (Provider, Riverpod, Bloc)
- Routing system (GoRouter, Navigator 2.0)
- API service layer and HTTP client
- Dependency injection pattern

### Testing
- Uses Flutter's built-in testing framework
- Current test coverage: Basic counter functionality
- Run tests with `flutter test`
- Widget testing setup ready for expansion

### Platform Requirements
- Flutter SDK ^3.9.2
- Android: Android Studio/SDK, Java 11+
- iOS: Xcode (macOS only)
- Web: Chrome for debugging
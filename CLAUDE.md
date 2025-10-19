# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

### Core Flutter Commands
```bash
# Run the app (defaults to main.dart/production environment)
flutter run

# Run on specific device
flutter run -d chrome                    # Web
flutter run -d macos                     # macOS
flutter devices                          # List available devices

# Development tools
flutter clean                            # Clean build files
flutter pub get                          # Install dependencies
flutter pub upgrade                      # Upgrade dependencies
flutter analyze                          # Static analysis (with riverpod_lint)
flutter test                             # Run all tests
flutter test test/widget_test.dart       # Run specific test
```

### Code Generation
```bash
# Generate code for Riverpod, Freezed, and other packages
flutter packages pub run build_runner build

# Watch for changes and regenerate automatically
flutter packages pub run build_runner watch

# Clean generated files and rebuild
flutter packages pub run build_runner build --delete-conflicting-outputs
```

### Custom Scripts
```bash
# Generate localization files from localise.biz
dart run bin/generate_l10n.dart

# Generate launcher icons
dart run flutter_launcher_icons

# Process image assets (organize into 2.0x and 3.0x folders)
dart run image_res:main
```

### Environment-Specific Commands
```bash
# Run with different environments
flutter run -t lib/main_dev.dart         # Development environment
flutter run -t lib/main_staging.dart     # Staging environment
flutter run -t lib/main_production.dart  # Production environment

# Build for different environments (Android flavors configured)
flutter build apk --flavor dev -t lib/main_dev.dart
flutter build apk --flavor staging -t lib/main_staging.dart
flutter build apk --flavor production -t lib/main_production.dart
```

## Code Architecture

### Application Structure
Modern Flutter architecture with **Riverpod state management**:
- `lib/main.dart`: Entry point with ProviderScope
- `lib/app.dart`: Root MaterialApp with routing and localization
- `lib/src/router/`: Go Router configuration with authentication guards
- `lib/src/authentication/`: Login, signup, forgot password screens and auth state
- `lib/src/chat/`: Chat functionality with AI service integration
- `lib/src/profile/` & `lib/src/settings/`: User profile and app settings
- `lib/src/shared/`: Reusable components, themes, utils, and global providers

### State Management
- **Riverpod**: Primary state management solution
- **Hooks Riverpod**: Used for widgets with lifecycle management
- **Code Generation**: Riverpod providers use `@riverpod` annotation
- **Generated Files**: `.g.dart` files are auto-generated (don't edit manually)

### Key Patterns
- **Authentication Flow**: Auth-guarded routing with redirect logic
- **Localization**: Multi-language support with generated l10n files
- **Theming**: Custom theme system with color schemes and typography
- **Networking**: HTTP client for API calls
- **Code Generation**: Freezed for immutable data classes, Riverpod for providers

### Dependencies
- **State Management**: `hooks_riverpod`, `riverpod_annotation`
- **Routing**: `go_router` with authentication guards
- **Networking**: `http` for API calls
- **Localization**: `flutter_localizations`, `intl`
- **UI**: Custom theme system, `cupertino_icons`
- **Code Generation**: `build_runner`, `freezed`, `riverpod_generator`
- **Development**: `flutter_lints`, `riverpod_lint`, `custom_lint`

### Generated Assets
- `lib/gen/assets.gen.dart`: Auto-generated asset references
- `lib/gen/fonts.gen.dart`: Auto-generated font references
- Files ending in `.g.dart`: Riverpod provider implementations
- Files ending in `.freezed.dart`: Immutable data class implementations

## Development Notes

### Key Files
- `lib/app.dart`: Main app configuration with theming and routing
- `lib/src/router/router.dart`: Go Router setup with auth guards
- `lib/src/authentication/provider/auth_provider.dart`: Authentication state management
- `lib/src/chat/`: Chat functionality and AI service integration
- `lib/src/shared/theme/`: Custom theming system
- `lib/src/localization/`: Generated localization files
- `bin/generate_l10n.dart`: Script to download and process translations
- `pubspec.yaml`: Dependencies and Flutter configuration

### Localization Workflow
- Translations hosted on localise.biz
- Run `dart run bin/generate_l10n.dart` to download latest translations
- Generates `.arb` files in `lib/src/localization/`
- Flutter automatically generates Dart classes from `.arb` files

### Testing
- Uses Flutter's built-in testing framework with Mockito
- Widget tests configured for Riverpod providers
- Run tests with `flutter test`

### Platform Requirements
- Flutter SDK ^3.35.4
- Dart SDK >=3.2.0
- Android: Android Studio/SDK, Java 11+
- iOS: Xcode (macOS only)
- Web: Chrome for debugging
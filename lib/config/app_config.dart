enum Environment { dev, staging, production }

class AppConfig {
  final Environment environment;
  final String appName;
  final String baseUrl;
  final bool enableLogging;
  final bool enableAnalytics;

  AppConfig._({
    required this.environment,
    required this.appName,
    required this.baseUrl,
    required this.enableLogging,
    required this.enableAnalytics,
  });

  static AppConfig? _instance;
  static AppConfig get instance => _instance!;

  static void initialize(Environment environment) {
    _instance = AppConfig._(
      environment: environment,
      appName: _getAppName(environment),
      baseUrl: _getBaseUrl(environment),
      enableLogging: _getLoggingEnabled(environment),
      enableAnalytics: _getAnalyticsEnabled(environment),
    );
  }

  static String _getAppName(Environment environment) {
    switch (environment) {
      case Environment.dev:
        return 'AiFarma Dev';
      case Environment.staging:
        return 'AiFarma Staging';
      case Environment.production:
        return 'AiFarma';
    }
  }

  static String _getBaseUrl(Environment environment) {
    switch (environment) {
      case Environment.dev:
        return 'https://dev-api.aifarma.com';
      case Environment.staging:
        return 'https://staging-api.aifarma.com';
      case Environment.production:
        return 'https://api.aifarma.com';
    }
  }

  static bool _getLoggingEnabled(Environment environment) {
    switch (environment) {
      case Environment.dev:
      case Environment.staging:
        return true;
      case Environment.production:
        return false;
    }
  }

  static bool _getAnalyticsEnabled(Environment environment) {
    switch (environment) {
      case Environment.dev:
        return false;
      case Environment.staging:
      case Environment.production:
        return true;
    }
  }

  bool get isDev => environment == Environment.dev;
  bool get isStaging => environment == Environment.staging;
  bool get isProduction => environment == Environment.production;
}
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'config/app_config.dart';
import 'src/api/api_service.dart';

void main() async {
  AppConfig.initialize(Environment.dev);

  runApp(
    ProviderScope(
      overrides: [
        // Override API base URL for dev environment
        apiBaseUrlProvider.overrideWith((ref) => 'https://dev-api.aifarma.com'),

        // Add more overrides here as needed
        // Example:
        // someOtherProvider.overrideWith((ref) => devValue),
      ],
      child: const MyApp(),
    ),
  );
}

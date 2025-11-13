import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'config/app_config.dart';
import 'src/api/api_service.dart';

void main() async {
  AppConfig.initialize(Environment.staging);

  runApp(
    ProviderScope(
      overrides: [
        // Override API base URL for staging environment
        apiBaseUrlProvider.overrideWith(
          (ref) =>
              'https://ai-farma-fastapi-694933721679.asia-southeast1.run.app', // cloud run
              // 'https://aifarma-dev-ap-iyh7y.ondigitalocean.app', // digital ocean
        ),

        // Add more overrides here as needed
        // Example:
        // someOtherProvider.overrideWith((ref) => stagingValue),
      ],
      child: const MyApp(),
    ),
  );
}

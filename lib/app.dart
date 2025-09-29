import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'config/app_config.dart';
import 'src/localization/app_localizations.dart';
import 'package:flutter/material.dart';

import 'src/shared/global_provider/locale_provider/locale_settings.dart';
import 'src/router/router.dart';

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeSettingsProvider);
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: AppConfig.instance.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      locale: locale,
      routerConfig: router,
    );
  }
}

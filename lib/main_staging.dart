import 'config/app_config.dart';
import 'main.dart' as app;

void main() {
  AppConfig.initialize(Environment.staging);
  app.main();
}
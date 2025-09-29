import 'config/app_config.dart';
import 'main.dart' as app;

void main() async {
  AppConfig.initialize(Environment.dev);
  app.main();
}

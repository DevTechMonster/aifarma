import 'package:logging/logging.dart';

mixin LoggerMixin {
  late final Logger _log = Logger(runtimeType.toString());
  Logger get log => _log;
}

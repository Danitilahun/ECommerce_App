import 'package:logger/logger.dart';

class LoggerHelper {
  static final Logger _instance = Logger(
    printer: PrettyPrinter(),
    level: Level.debug,
  );

  static void debug(String message) => _instance.d(message);
  static void info(String message) => _instance.i(message);
  static void warning(String message) => _instance.w(message);
  static void error(String message, [dynamic error]) =>
      _instance.e(message, error: error, stackTrace: StackTrace.current);
}

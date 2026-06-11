import 'logger.dart';

class ConsoleLogger implements Logger {
  @override
  void debug(String message) {
    print('[DEBUG] $message');
  }

  @override
  void info(String message) {
    print('[INFO] $message');
  }

  @override
  void warning(String message) {
    print('[WARNING] $message');
  }

  @override
  void error(String message, {Object? error, StackTrace? stackTrace}) {
    print('[ERROR] $message');
    print(error);
    print(stackTrace);
  }
}

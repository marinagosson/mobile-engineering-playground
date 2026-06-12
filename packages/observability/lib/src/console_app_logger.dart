import 'package:observability/src/app_logger.dart';

class ConsoleAppLogger implements AppLogger {
  @override
  void info(
    String fileName,
    String functionName,
    String message, {
    Map<String, dynamic>? metadata,
  }) {
    print('$fileName.$functionName() $message $metadata');
  }

  @override
  void error(
    String message, {
    Object? error,
    StackTrace? stackTrace,
    Map<String, dynamic>? metadata,
  }) {
    print('[ERROR] $message');
  }
}

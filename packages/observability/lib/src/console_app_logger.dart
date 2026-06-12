import 'package:flutter/foundation.dart';
import 'package:observability/src/app_logger.dart';

class ConsoleAppLogger implements AppLogger {
  @override
  void info(
    String fileName,
    String functionName,
    String message, {
    Map<String, dynamic>? metadata,
  }) {
    if (kDebugMode) {
      print('$fileName.$functionName() $message $metadata');
    }
  }

  @override
  void error(
    String message, {
    Object? error,
    StackTrace? stackTrace,
    Map<String, dynamic>? metadata,
  }) {
    if (kDebugMode) {
      print('[ERROR] $message');
    }
  }
}

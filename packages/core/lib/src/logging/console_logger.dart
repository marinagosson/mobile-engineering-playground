import 'package:flutter/foundation.dart';

import 'logger.dart';

class ConsoleLogger implements Logger {
  @override
  void debug(String message) {
    if (kDebugMode) {
      print('[DEBUG] $message');
    }
  }

  @override
  void info(String message) {
    if (kDebugMode) {
      print('[INFO] $message');
    }
  }

  @override
  void warning(String message) {
    if (kDebugMode) {
      print('[WARNING] $message');
    }
  }

  @override
  void error(String message, {Object? error, StackTrace? stackTrace}) {
    if (kDebugMode) {
      print('[ERROR] $message');
      print(error);
      print(stackTrace);
    }
  }
}

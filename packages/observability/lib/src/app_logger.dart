abstract interface class AppLogger {
  void info(
    String nameFile,
    String nameFunction,
    String message, {
    Map<String, dynamic>? metadata,
  });

  void error(
    String message, {
    Object? error,
    StackTrace? stackTrace,
    Map<String, dynamic>? metadata,
  });
}

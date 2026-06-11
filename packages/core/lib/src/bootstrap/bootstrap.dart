import 'package:core/core.dart';

Future<void> bootstrap() async {
  sl.registerLazySingleton<Logger>(ConsoleLogger.new);
}

import 'package:core/core.dart';
import 'package:observability/observability.dart';

class ObservabilityModule {
  void registerDependencies() {
    sl.registerLazySingleton<AppLogger>(ConsoleAppLogger.new);
  }
}

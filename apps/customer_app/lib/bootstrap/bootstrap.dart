import 'package:config/config.dart';
import 'package:core/core.dart';
import 'package:network/network.dart';
import 'package:observability/observability.dart';

Future<void> bootstrap(AppConfig config) async {
  sl.registerSingleton<FeatureFlags>(LocalFeatureFlags());

  NetworkModule().registerDependencies();

  ObservabilityModule().registerDependencies();
}

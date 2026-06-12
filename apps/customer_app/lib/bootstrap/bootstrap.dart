import 'package:config/config.dart';
import 'package:network/network.dart';
import 'package:observability/observability.dart';

Future<void> bootstrap(AppConfig config) async {
  NetworkModule().registerDependencies();

  ObservabilityModule().registerDependencies();
}

import 'package:network/network.dart';
import 'package:observability/observability.dart';

Future<void> bootstrap() async {
  NetworkModule().registerDependencies();

  ObservabilityModule().registerDependencies();
}

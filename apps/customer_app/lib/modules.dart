import 'package:config/config.dart';
import 'package:core/core.dart';
import 'package:experimental_home/experimental_home.dart';
import 'package:home/home.dart';
import 'package:auth/auth.dart';

ModuleRegistry getModules() {
  final flags = sl<FeatureFlags>();

  return ModuleRegistry([
    AuthModule(),
    HomeModule(),
    if (flags.experimentalHome) ExperimentalHomeModule(),
  ]);
}

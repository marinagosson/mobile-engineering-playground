import 'package:core/core.dart';
import 'package:home/home.dart';
import 'package:auth/auth.dart';

List<FeatureModule> getModules() {
  return [AuthModule(), HomeModule()];
}

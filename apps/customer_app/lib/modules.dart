import 'package:core/core.dart';
import 'package:home/home.dart';
import 'package:auth/auth.dart';

ModuleRegistry getModules() {
  return ModuleRegistry([AuthModule(), HomeModule()]);
}

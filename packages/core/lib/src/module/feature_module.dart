import 'package:flutter/widgets.dart';

abstract interface class FeatureModule {
  String get name;

  String get route;

  String get version;

  Widget buildPage();

  void registerDependencies();
}

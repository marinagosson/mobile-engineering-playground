import 'package:flutter/widgets.dart';

abstract interface class FeatureModule {
  String get route;

  Widget buildPage();

  void registerDependencies();
}

import 'package:core/core.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class HomeModule implements FeatureModule {
  @override
  String get route => '/';

  @override
  Widget buildPage() {
    return const HomePage();
  }

  @override
  void registerDependencies() {}
}

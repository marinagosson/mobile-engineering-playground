import 'package:flutter/material.dart';
import 'package:core/core.dart';

import 'experimental_home_page.dart';

class ExperimentalHomeModule implements FeatureModule {
  @override
  String get name => 'experimental_home';

  @override
  String get route => '/experimental-home';

  @override
  String get version => '1.0.0';

  @override
  void registerDependencies() {}

  @override
  Widget buildPage() {
    return const ExperimentalHomePage();
  }
}

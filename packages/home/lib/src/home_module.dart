import 'package:core/core.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'home_repository.dart';
import 'home_repository_impl.dart';

class HomeModule implements FeatureModule {
  @override
  String get route => '/home';

  @override
  Widget buildPage() {
    return const HomePage();
  }

  @override
  void registerDependencies() {
    sl.registerLazySingleton<HomeRepository>(HomeRepositoryImpl.new);
  }

  @override
  String get name => 'home';

  @override
  String get version => '1.0.0';
}

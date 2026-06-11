import 'package:auth/src/login_controller.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';
import 'auth_repository.dart';
import 'auth_repository_impl.dart';

class AuthModule implements FeatureModule {
  @override
  String get route => '/';

  @override
  Widget buildPage() {
    return LoginPage();
  }

  @override
  void registerDependencies() {
    sl.registerLazySingleton<AuthRepository>(AuthRepositoryImpl.new);
    sl.registerFactory(() => LoginController(sl<AuthRepository>()));
  }

  @override
  String get name => 'auth';
}

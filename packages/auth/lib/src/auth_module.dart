import 'package:auth/src/login_controller.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:network/network.dart';
import 'package:observability/observability.dart';

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
    sl.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(sl<ApiClient>()),
    );
    sl.registerFactory(
      () => LoginController(sl<AuthRepository>(), sl<AppLogger>()),
    );
  }

  @override
  String get name => 'auth';
}

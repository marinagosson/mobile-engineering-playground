import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class MyApp extends StatelessWidget {
  final ModuleRegistry modules;

  const MyApp(this.modules, {super.key});

  @override
  Widget build(BuildContext context) {
    final router = RouteRegistry().buildRouter(modules);

    return MaterialApp.router(
      title: 'Mobile Engineering Playground',
      routerConfig: router,
    );
  }
}

import 'package:core/core.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final List<FeatureModule> modules;

  const MyApp(this.modules, {super.key});

  @override
  Widget build(BuildContext context) {
    final initialModule = modules.first;

    return MaterialApp(
      title: 'Mobile Engineering Playground',
      home: initialModule.buildPage(),
    );
  }
}

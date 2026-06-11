import 'package:flutter/material.dart';
import 'package:home/home.dart';

import 'app.dart';

void main() {
  final modules = [HomeModule()];

  for (final module in modules) {
    module.registerDependencies();
  }

  runApp(MyApp(modules));
}

import 'package:flutter/material.dart';

import 'app.dart';
import 'modules.dart';

void main() {
  final modules = getModules();

  for (final module in modules) {
    module.registerDependencies();
  }

  runApp(MyApp(modules));
}

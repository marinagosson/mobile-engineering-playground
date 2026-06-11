import 'package:flutter/material.dart';
import 'package:network/network.dart';

import 'app.dart';
import 'modules.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  NetworkModule().registerDependencies();

  final modules = getModules();

  for (final module in modules) {
    module.registerDependencies();
  }

  runApp(MyApp(modules));
}

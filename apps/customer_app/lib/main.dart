import 'package:config/config.dart';
import 'package:customer_app/bootstrap/bootstrap.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'modules.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await bootstrap(EnvironmentFactory.create());

  final moduleRegistry = getModules();

  for (final module in moduleRegistry.all) {
    module.registerDependencies();
  }

  runApp(MyApp(moduleRegistry));
}

import 'package:customer_app/bootstrap/bootstrap.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'modules.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await bootstrap();

  final modules = getModules();

  for (final module in modules) {
    module.registerDependencies();
  }

  runApp(MyApp(modules));
}

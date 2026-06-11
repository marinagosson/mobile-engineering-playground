import 'package:core/core.dart';
import 'package:flutter/material.dart';

import 'home_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final repository = sl<HomeRepository>();
    return Scaffold(body: Center(child: Text(repository.getMessage())));
  }
}

import 'package:config/config.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final flags = sl<FeatureFlags>();
    final valueText = flags.newHomeEnabled
        ? 'New Home Enabled'
        : 'Bem-vinda ao Mobile Engineering Playground';
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(child: Text(valueText)),
    );
  }
}

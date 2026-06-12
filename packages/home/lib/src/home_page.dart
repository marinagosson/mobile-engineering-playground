import 'package:config/config.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/src/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final flags = sl<FeatureFlags>();

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [if (flags.experimentalBanner) const ExperimentalBanner()],
      ),
    );
  }
}

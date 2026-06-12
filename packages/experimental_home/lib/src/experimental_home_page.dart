import 'package:flutter/material.dart';

class ExperimentalHomePage extends StatelessWidget {
  const ExperimentalHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Experimental Home')),
      body: const Center(child: Text('Feature Flag Enabled')),
    );
  }
}

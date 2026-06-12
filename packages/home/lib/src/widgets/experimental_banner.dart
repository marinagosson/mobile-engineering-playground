import 'package:flutter/material.dart';

class ExperimentalBanner extends StatelessWidget {
  const ExperimentalBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text('Experimental Home Enabled'),
      ),
    );
  }
}

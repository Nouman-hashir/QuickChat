import 'package:flutter/material.dart';

class SpalshView extends StatelessWidget {
  const SpalshView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Splash Screen',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
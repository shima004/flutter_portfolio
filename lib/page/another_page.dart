import 'package:flutter/material.dart';

class AnotherPage extends StatelessWidget {
  const AnotherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Another Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}

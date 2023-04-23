import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Center(
        child: Text(
          'About Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}

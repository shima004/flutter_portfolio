import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Center(
        child: Text(
          'Content Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}

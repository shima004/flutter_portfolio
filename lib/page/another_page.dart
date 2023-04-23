import 'package:flutter/material.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Center(
        child: Text(
          'Work Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}

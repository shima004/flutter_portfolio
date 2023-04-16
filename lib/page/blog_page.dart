import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Blog Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}

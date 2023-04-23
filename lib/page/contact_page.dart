import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Center(
        child: Text(
          'Contact Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}

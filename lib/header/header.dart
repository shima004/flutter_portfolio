import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_portfolio/widget/button/toggle_darkmode.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  final List<String> _menuList = [
    'Home',
    'Portfolio',
    'Blog',
    'Contact',
    'Another',
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> header = _menuList.map((menu) {
      return SizedBox(
        // margin: const EdgeInsets.only(left: 10),
        height: 40.0,
        child: Row(
          children: [
            Container(
              width: 2.0,
              height: double.infinity,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(
              width: 80,
              height: double.infinity,
              child: TextButton(
                onPressed: () {
                  String path = menu.toLowerCase();
                  Navigator.pushNamed(context, '/$path');
                },
                child: Text(menu, style: Theme.of(context).textTheme.headline2),
              ),
            ),
          ],
        ),
      );
    }).toList();

    return Container(
      margin: const EdgeInsets.only(top: 8, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [...header, const ToggleDarkMode()],
      ),
    );
  }
}

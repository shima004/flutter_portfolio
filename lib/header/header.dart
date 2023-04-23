import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_portfolio/widget/button/toggle_darkmode.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class Header extends StatefulWidget {
  const Header({super.key, required this.controller});
  final AutoScrollController controller;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  final List<String> _menuList = [
    'About',
    'Content',
    'Work',
    'Contact',
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> header = _menuList.asMap().entries.map((menu) {
      return SizedBox(
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
                  widget.controller.scrollToIndex(menu.key,
                      preferPosition: AutoScrollPosition.begin);
                },
                child: Text(menu.value,
                    style: Theme.of(context).textTheme.headline2),
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

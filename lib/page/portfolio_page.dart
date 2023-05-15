import 'package:flutter/material.dart';
import 'package:flutter_portfolio/header/header.dart';
import 'package:flutter_portfolio/page/about_page.dart';
import 'package:flutter_portfolio/page/contact_page.dart';
import 'package:flutter_portfolio/page/home_page.dart';
import 'package:flutter_portfolio/page/skill_page.dart';
import 'package:flutter_portfolio/page/work_page.dart';
import 'package:flutter_portfolio/widget/drawer/end_drawer.dart';
import 'package:flutter_portfolio/widget/panel/left_panel.dart';
import 'package:flutter_portfolio/widget/panel/right_panel.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  final AutoScrollController _controller = AutoScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _actions = const [
    'Home',
    'About',
    'Skill',
    'Work',
    'Contact',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: EndDrawer(
        actions: _actions,
        controller: _controller,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Header(
                controller: _controller,
                scaffoldKey: _scaffoldKey,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  const LeftPanel(),
                  Expanded(
                    flex: 12,
                    child: ListView(
                      controller: _controller,
                      children: [
                        AutoScrollTag(
                          key: const ValueKey(0),
                          controller: _controller,
                          index: 0,
                          child: const HomePage(),
                        ),
                        AutoScrollTag(
                          key: const ValueKey(1),
                          controller: _controller,
                          index: 1,
                          child: AboutPage(),
                        ),
                        AutoScrollTag(
                          key: const ValueKey(2),
                          controller: _controller,
                          index: 2,
                          child: const SkillPage(),
                        ),
                        AutoScrollTag(
                          key: const ValueKey(3),
                          controller: _controller,
                          index: 3,
                          child: const WorkPage(),
                        ),
                        AutoScrollTag(
                          key: const ValueKey(4),
                          controller: _controller,
                          index: 4,
                          child: const ContactPage(),
                        ),
                      ],
                    ),
                  ),
                  const RightPanel()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/header/header.dart';
import 'package:flutter_portfolio/page/about_page.dart';
import 'package:flutter_portfolio/page/another_page.dart';
import 'package:flutter_portfolio/page/contact_page.dart';
import 'package:flutter_portfolio/page/content_page.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  final AutoScrollController controller = AutoScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              child: Header(
                controller: controller,
              ),
            ),
            Expanded(
              child: ListView(
                controller: controller,
                children: [
                  AutoScrollTag(
                    key: ValueKey(0),
                    controller: controller,
                    index: 0,
                    child: const AboutPage(),
                  ),
                  AutoScrollTag(
                    key: ValueKey(1),
                    controller: controller,
                    index: 1,
                    child: const ContentPage(),
                  ),
                  AutoScrollTag(
                    key: ValueKey(2),
                    controller: controller,
                    index: 2,
                    child: const WorkPage(),
                  ),
                  AutoScrollTag(
                    key: ValueKey(3),
                    controller: controller,
                    index: 3,
                    child: const ContactPage(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

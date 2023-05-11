import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widget/card/content_card.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Center(
        child: Wrap(
          children: const [
            ContentCard(
                title: "test",
                description: "testtest",
                imagePath: "image",
                usedTech: "reace, js",
                githubLink: "aa",
                developmentPeriod: "2",
                position: "backend",
                menbers: "2")
          ],
        ),
      ),
    );
  }
}

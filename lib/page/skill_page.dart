import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widget/card/skill_chip.dart';

const List<String> skills = [
  "go",
  "flutter",
  "dart",
  "firebase",
  "aws",
  "docker",
  "git",
  "github",
  "gitlab",
  "python",
  "c",
  "c++",
  "c#",
  "java",
  "javascript",
  "node.js",
  "html",
  "css",
  "php",
  "mysql",
  "postgresql",
];

class SkillPage extends StatelessWidget {
  const SkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      child: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Skills",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Wrap(
                    children: skills
                        .map((e) => SkillChip(
                              skill: e,
                            ))
                        .toList(),
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    "images/skill.png",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

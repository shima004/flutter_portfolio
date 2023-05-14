import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widget/card/skill_chip.dart';
import 'package:flutter_portfolio/widget/text/title_tabel.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      // height: 500,
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      child: Center(
        child: Column(
          children: [
            const TitleLabel(label: "Skill"),
            Wrap(
              children: [
                const Spacer(),
                SizedBox(
                  width: 400,
                  child: Wrap(
                    children: skills
                        .map((e) => SkillChip(
                              skill: e,
                            ))
                        .toList(),
                  ),
                ),
                // const Spacer(),
                SizedBox(
                  height: 300,
                  child: SvgPicture.asset(
                    'images/skill.svg',
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).primaryColor,
                      BlendMode.srcATop,
                    ),
                    width: 300,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

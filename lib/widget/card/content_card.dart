import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  const ContentCard(
      {super.key,
      required this.title,
      required this.description,
      required this.imagePath,
      required this.usedTech,
      required this.githubLink,
      required this.developmentPeriod,
      required this.position,
      required this.menbers});

  final String title;
  final String description;
  final String imagePath;
  final String usedTech;
  final String githubLink;
  final String developmentPeriod;
  final String position;
  final String menbers;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Column(
        children: [
          Text(title),
          Image(image: AssetImage(imagePath)),
          Text(description),
          Text(usedTech),
          Text(developmentPeriod),
          Text(position),
          Text(menbers),
          Text(githubLink),
        ],
      ),
    );
  }
}

Widget _createDiscription(String description) {
  return Text(description);
}

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
    return Container(
      width: 250,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(title),
          Image.network(imagePath),
          _createDiscription("Description", description),
          _createDiscription("Used Tech", usedTech),
          _createDiscription("Development Period", developmentPeriod),
          _createDiscription("Position", position),
          _createDiscription("Menbers", menbers),
          _createDiscription("Github Link", githubLink),
        ],
      ),
    );
  }
}

Widget _createDiscription(String label, String description) {
  return Text(
    "$label: $description",
    style: const TextStyle(fontSize: 15),
  );
}

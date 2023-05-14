import 'package:flutter/material.dart';

class SkillChip extends StatelessWidget {
  const SkillChip({super.key, required this.skill});
  final String skill;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.orange.shade50,
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.orange.withAlpha(100),
        ),
        child: Text(
          skill,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}

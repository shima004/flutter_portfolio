import 'package:flutter/material.dart';

class LeftCard extends StatelessWidget {
  const LeftCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      child: Row(
        children: const [
          Expanded(
            flex: 2,
            child: SelectableText(
                "texttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttext"),
          ),
          Expanded(
            flex: 3,
            child: Image(
              image: AssetImage('images/450x350.png'),
            ),
          ),
        ],
      ),
    );
  }
}

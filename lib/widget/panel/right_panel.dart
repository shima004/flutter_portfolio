import 'package:flutter/material.dart';

class RightPanel extends StatelessWidget {
  const RightPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(bottom: 10),
              child: const VerticalDivider(
                color: Colors.black,
                thickness: 1.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

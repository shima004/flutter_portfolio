import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class EndDrawer extends StatelessWidget {
  const EndDrawer({super.key, required this.actions, required this.controller});
  final List<String> actions;
  final AutoScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        ..._buildActionList(actions, controller, context),
      ]),
    );
  }
}

List<Widget> _buildActionList(List<String> actions,
    AutoScrollController controller, BuildContext context) {
  return actions.asMap().entries.map((action) {
    return ListTile(
      title: TextButton(
        onPressed: () {
          controller.scrollToIndex(action.key,
              preferPosition: AutoScrollPosition.begin);
        },
        child: Text(action.value,
            style: Theme.of(context).textTheme.displayMedium),
      ),
    );
  }).toList();
}

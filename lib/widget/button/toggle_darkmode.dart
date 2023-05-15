import 'package:flutter/material.dart';
import 'package:flutter_portfolio/providers/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ToggleDarkMode extends ConsumerWidget {
  const ToggleDarkMode({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    return SizedBox(
      child: ToggleButtons(
        isSelected: [!theme.isDarkModeEnabled, theme.isDarkModeEnabled],
        onPressed: (index) {
          ref.read(themeProvider.notifier).toggleTheme();
        },
        borderRadius: BorderRadius.circular(20.0),
        children: const [
          Icon(Icons.wb_sunny),
          Icon(Icons.nightlight_round),
        ],
      ),
    );
  }
}

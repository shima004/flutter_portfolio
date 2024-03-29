import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_portfolio/page/portfolio_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/theme_provider.dart';

void main() async {
  try {
    await dotenv.load(fileName: '.env');
  } catch (e) {}
  runApp(
    const ProviderScope(
      child: MyHomePage(),
    ),
  );
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: theme.isDarkModeEnabled ? theme.darkTheme : theme.lightTheme,
      home: const PortfolioPage(),
    );
  }
}

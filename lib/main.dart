import 'package:flutter/material.dart';
import 'package:flutter_portfolio/page/portfolio_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/theme_provider.dart';

void main() {
  runApp(const ProviderScope(child: MyHomePage()));
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    return MaterialApp(
        title: 'My App',
        debugShowCheckedModeBanner: false,
        theme: theme.isDarkModeEnabled ? theme.darkTheme : theme.lightTheme,
        // routes: <String, WidgetBuilder>{
        //   '/': (BuildContext context) => const HomePage(),
        //   '/home': (BuildContext context) => const HomePage(),
        //   '/portfolio': (BuildContext context) => const PortfolioPage(),
        //   '/blog': (BuildContext context) => const BlogPage(),
        //   '/contact': (BuildContext context) => const ContactPage(),
        //   '/another': (BuildContext context) => const AnotherPage(),
        // },
        // onGenerateRoute: (settings) {
        //   switch (settings.name) {
        //     case '/':
        //       return PageRouteBuilder(
        //           pageBuilder: (_, __, ___) => const HomePage());
        //     case '/home':
        //       return PageRouteBuilder(
        //           pageBuilder: (_, __, ___) => const HomePage());
        //     case '/portfolio':
        //       return PageRouteBuilder(
        //           pageBuilder: (_, __, ___) => const PortfolioPage());
        //     case '/blog':
        //       return PageRouteBuilder(
        //           pageBuilder: (_, __, ___) => const BlogPage());
        //     case '/contact':
        //       return PageRouteBuilder(
        //           pageBuilder: (_, __, ___) => const ContactPage());
        //     case '/another':
        //       return PageRouteBuilder(
        //           pageBuilder: (_, __, ___) => const AnotherPage());
        //     default:
        //       return PageRouteBuilder(
        //           pageBuilder: (_, __, ___) => const HomePage());
        // }
        // },
        home: PortfolioPage());
  }
}

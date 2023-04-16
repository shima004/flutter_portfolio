import 'package:flutter/material.dart';
import 'package:flutter_portfolio/header/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'PacaPaca.net',
              style: Theme.of(context).textTheme.headline1,
            ),
            floating: true,
            snap: true,
            expandedHeight: 50.0,
            pinned: true,
            actions: const [Header()],
            backgroundColor: Theme.of(context).backgroundColor,
            elevation: 0.0,
            automaticallyImplyLeading: false,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 10000.0,
                  color: Theme.of(context).backgroundColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

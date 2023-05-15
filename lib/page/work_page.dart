import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_portfolio/model/dev_model.dart';
import 'package:flutter_portfolio/widget/card/content_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

class WorkPage extends StatelessWidget {
  const WorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 500,
      child: Center(
        child: Consumer(builder: (context, ref, child) {
          final data = ref.watch(dataProvider);
          return data.when(
              data: (value) {
                return Wrap(
                    children: value
                        .map<Widget>((e) => Container(
                              padding: const EdgeInsets.all(8),
                              child: ContentCard(
                                title: e.title,
                                description: e.description,
                                imagePath: e.imagePath,
                                usedTech: e.usedTech,
                                githubLink: e.githubLink,
                                developmentPeriod: e.developmentPeriod,
                                position: e.position,
                                menbers: e.members,
                              ),
                            ))
                        .toList());
              },
              loading: () => const CircularProgressIndicator(),
              error: (e, s) {
                return Text(e.toString());
              });
        }),
      ),
    );
  }
}

Future<List<DevArticleModel>> _loadDevArticle() async {
  final result = await http.get(
    Uri.parse(
      'https://sj3whb72cf.microcms.io/api/v1/dev',
    ),
    headers: {"X-MICROCMS-API-KEY": dotenv.get('MICROCMS_KEY')},
  );
  List responseJson = json.decode(result.body)['contents'];
  List<DevArticleModel> devArticleList =
      responseJson.map((m) => DevArticleModel.fromJson(m)).toList();

  return devArticleList;
}

final dataProvider = FutureProvider<List<DevArticleModel>>((ref) async {
  return _loadDevArticle();
});

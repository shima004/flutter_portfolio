import 'package:flutter/material.dart';
import 'package:flutter_portfolio/model/intro_model.dart';
import 'package:flutter_portfolio/widget/text/title_tabel.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutPage extends StatelessWidget {
  AboutPage({super.key});

  List<IntroModel> introList = [
    IntroModel(
      label: 'Name',
      text: 'Yuki Shimada',
    ),
    IntroModel(
      label: 'Age',
      text: '20',
    ),
    IntroModel(
      label: 'University',
      text: 'Aichi Institute of Technology',
    ),
    IntroModel(
      label: 'Major',
      text: 'Information Science',
    ),
    IntroModel(
      label: 'Hobby',
      text: 'Programming',
    ),
    IntroModel(
      label: 'Favorite',
      text: 'Golang, Flutter',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 500,
      child: Center(
        child: Column(
          children: [
            const TitleLabel(label: 'About'),
            Wrap(
              // mainAxisAlignment: MainAxisAlignment.center,
              alignment: WrapAlignment.center,
              children: [
                // const Spacer(),
                SvgPicture.asset('images/about.svg',
                    width: 300,
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).primaryColor,
                      BlendMode.srcATop,
                    )),
                // const Spacer(),
                SizedBox(
                  width: 400,
                  height: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      ...introList
                          .map((e) => _withLabel(e.label, e.text, context))
                          .toList(),
                      const Spacer(),
                    ],
                  ),
                ),
                // const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _withLabel(String label, String text, BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(bottom: 10),
    child: Row(
      children: [
        Text(
          '$label: ',
          style: const TextStyle(fontSize: 20),
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    ),
  );
}

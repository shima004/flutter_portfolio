import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Contact me at ',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.twitter,
                      size: 30,
                    ),
                    onPressed: () async {
                      await launchUrl(Uri(
                        scheme: 'https',
                        host: 'twitter.com',
                        path: 'PacaShima',
                      ));
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.envelope,
                      size: 30,
                    ),
                    onPressed: () async {
                      await launchUrl(
                        Uri(
                          scheme: 'mailto',
                          path: '',
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

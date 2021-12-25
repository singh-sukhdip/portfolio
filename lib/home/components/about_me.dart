import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_button.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          'Hi! My name is Sukhdip Singh. I am a flutter developer. I have developed two main apps Elector search and mroznamcha which are available on playstore other than this i have worked on other projects also.',
          style: TextStyle(color: Colors.grey, fontSize: 18),
        ),
        const SizedBox(
          height: 40,
        ),
        Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: CustomButton(title: 'Download CV', onTap: () {}),
            ),
            const SizedBox(
              width: 30,
            ),
            CustomButton(title: 'Hire Me', onTap: () {}),
          ],
        ),
      ],
    );
  }
}

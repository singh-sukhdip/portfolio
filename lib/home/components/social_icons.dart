import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/custom_icon.dart';
import 'dart:js' as js;

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIcon(
          icon: FontAwesomeIcons.linkedinIn,
          onTap: () {
            js.context.callMethod('open', [
              'https://in.linkedin.com/in/sukhdip-singh-1a82797a',
            ]);
          },
          //color: Colors.grey,
        ),
        const SizedBox(
          width: 20,
        ),
        CustomIcon(
          icon: FontAwesomeIcons.github,
          onTap: () {
            js.context.callMethod('open', [
              'https://github.com/singh-sukhdip?tab=repositories',
            ]);
          },
          //color: Colors.grey,
        ),
        const SizedBox(
          width: 20,
        ),
        CustomIcon(
          icon: FontAwesomeIcons.twitter,
          onTap: () {
            js.context.callMethod('open', [
              'https://twitter.com/singh_sukhdip_',
            ]);
          },
          //color: Colors.grey,
        ),
      ],
    );
  }
}

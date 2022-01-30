import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_card.dart';
import 'package:portfolio/widgets/on_hover_effect.dart';
import 'dart:js' as js;

class Projects extends StatelessWidget {
  const Projects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      //for responsive design
      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OnHoverEffect(
          transform: Matrix4.identity()
            ..translate(
              0,
              -8,
              0,
            )
            ..scale(1.02),
          child: CustomCard(
            onPress: () {
              js.context.callMethod('open', [
                'https://play.google.com/store/apps/details?id=nic.hp.erms',
              ]);
            },
            image: 'assets/images/elector_search.png',
            text: 'Elector Search Himachal',
          ),
        ),
        OnHoverEffect(
          transform: Matrix4.identity()
            ..translate(
              0,
              -8,
              0,
            )
            ..scale(1.02),
          child: CustomCard(
            onPress: () {
              js.context.callMethod('open', [
                'https://play.google.com/store/apps/details?id=nic.hp.mroznamcha',
              ]);
            },
            image: 'assets/images/mroznamcha.png',
            text: 'mRoznamcha mobile app',
          ),
        ),
        OnHoverEffect(
          transform: Matrix4.identity()
            ..translate(
              0,
              -8,
              0,
            )
            ..scale(1.02),
          child: CustomCard(
            image: 'assets/images/profile_pic.jpeg',
            text: 'Personal Portfolio',
          ),
        ),
      ],
    );
  }
}

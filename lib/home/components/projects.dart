import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_card.dart';
import 'package:portfolio/widgets/on_hover_effect.dart';

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
            image: 'assets/images/1.png',
            text: 'Personal Portfolio',
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
            image: 'assets/images/2.png',
            text: 'Wedding Couple',
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
            image: 'assets/images/3.png',
            text: 'Product Landing Page',
          ),
        ),
      ],
    );
  }
}

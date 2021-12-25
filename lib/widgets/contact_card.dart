import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/styles.dart';
import 'package:portfolio/widgets/on_hover_effect.dart';

class ContactCard extends StatelessWidget {
  final IconData? icon;
  final String? headline;
  final String? description;
  const ContactCard(
      {Key? key,
      required this.icon,
      required this.headline,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Get.isDarkMode
            ? backgroundColorDark
            : backgroundColorLight.withOpacity(0.9),
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
          width: 2,
          color: Get.isDarkMode ? Colors.grey[800]! : Colors.grey[300]!,
        ),
        boxShadow: [
          BoxShadow(
              color: Get.isDarkMode ? Colors.grey[700]! : Colors.grey[700]!,
              offset: const Offset(3.0, 3.0),
              blurRadius: 8.0,
              spreadRadius: 2.0)
        ],
        shape: BoxShape.rectangle,
        //color: backgroundColorLight,
      ),
      height: 150,
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OnHoverEffect(
            transform: Matrix4.identity()
              ..translate(
                0,
                -8,
                0,
              )
              ..scale(1.3),
            child: Icon(
              icon,
              color: pinkLightFontColor,
            ),
          ),
          Text(
            headline!,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontWeight: FontWeight.w600),
          ),
          SelectableText(
            description!,
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(fontWeight: FontWeight.w300, fontSize: 15),
          ),
        ],
      ),
    );
  }
}

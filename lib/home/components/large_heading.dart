import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LargeHeading extends StatelessWidget {
  final String text;
  const LargeHeading({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: Get.textTheme.headline4!.copyWith(
        fontWeight: FontWeight.bold,
        color: Get.isDarkMode ? Colors.white : Colors.black87,
        fontSize: 26,
        letterSpacing: 2,
      ),
    );
  }
}

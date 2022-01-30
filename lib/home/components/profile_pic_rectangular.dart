import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePicRectangular extends StatelessWidget {
  const ProfilePicRectangular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
            width: 10,
            color: Get.isDarkMode ? Colors.grey[800]! : Colors.grey[300]!),
        boxShadow: [
          BoxShadow(
              color: Colors.grey[700]!,
              offset: const Offset(3.0, 3.0),
              blurRadius: 8.0,
              spreadRadius: 2.0)
        ],
        shape: BoxShape.rectangle,
        color: Get.isDarkMode ? Colors.grey[600]! : Colors.grey[200],
      ),
      height: 300,
      width: 300,
      child: Image.asset(
        'images/profile_pic.jpeg',
        fit: BoxFit.cover,
      ),
    );
  }
}

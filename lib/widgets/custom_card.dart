import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/styles.dart';

class CustomCard extends StatefulWidget {
  final String image;
  final String text;
  const CustomCard({Key? key, this.image = '', this.text = ''})
      : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      padding: EdgeInsets.only(
          top: (isHover) ? 25 : 30.0, bottom: !(isHover) ? 25 : 30),
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
      height: 250,
      width: 300,
      child: InkWell(
        onHover: (val) {
          setState(() {
            isHover = val;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              widget.image,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10,
            ),
            Flexible(
                fit: FlexFit.loose,
                child: Text(
                  widget.text,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: greyFontColor),
                )),
          ],
        ),
      ),
    );
  }
}

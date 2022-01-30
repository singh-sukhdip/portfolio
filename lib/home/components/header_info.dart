import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/styles.dart';

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
        ),
        Text('hello'.tr,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: greyFontColor)),
        // DefaultTextStyle(
        //     style: Theme.of(context)
        //         .textTheme
        //         .headline6!
        //         .copyWith(color: greyFontColor),
        //     child: AnimatedTextKit(
        //       animatedTexts: [FlickerAnimatedText('Hello')],
        //     )),
        SizedBox(
          height: 5,
        ),
        Text(
          'name'.tr,
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(fontWeight: FontWeight.w900),
          // style: const TextStyle(
          //     fontSize: 40,
          //     fontWeight: FontWeight.w900,
          //     color: Colors.black87),
        ),
        SizedBox(
          height: 10,
        ),
        // Text(
        //   'Flutter developer',
        //   style: TextStyle(color: Colors.grey[700], fontSize: 25),
        // ),
        Container(
          height: 55,
          child: DefaultTextStyle(
            //maxLines: 1,
            style: TextStyle(color: Colors.grey[700], fontSize: 25
                //fontFamily: 'Agne',
                ),
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TypewriterAnimatedText('developer_1'.tr,
                    speed: Duration(milliseconds: 100)),
                TypewriterAnimatedText('developer_2'.tr,
                    speed: Duration(milliseconds: 100)),
                //TypewriterAnimatedText('Do not patch bugs out, rewrite them'),
                //TypewriterAnimatedText('Do not test bugs out, design them out'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        // CustomButton(
        //   title: 'More About Me',
        //   onTap: () {},
        // ),
      ],
    );
  }
}

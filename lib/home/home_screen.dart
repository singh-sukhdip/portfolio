import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/consts.dart';
import 'package:portfolio/utils/styles.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:portfolio/widgets/custom_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          CustomIcon(
            icon: Icons.menu_rounded,
            onTap: () {},
          ),
          SizedBox(
            width: context.width * 0.1,
          ),
        ],
      ),
      body: Container(
        constraints: BoxConstraints(maxWidth: 1444),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello',
                      style: const TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'I\'m Sukhdip Singh',
                      style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                          color: Colors.black87),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Flutter developer',
                      style: TextStyle(color: Colors.grey[700], fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomButtom(
                      title: 'More About Me',
                      onTap: () {},
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(width: 10, color: Colors.grey[300]!),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[700]!,
                          offset: const Offset(3.0, 3.0),
                          blurRadius: 8.0,
                          spreadRadius: 2.0)
                    ],
                    shape: BoxShape.circle,
                    //color: backgroundColorLight,
                  ),
                  height: 300,
                  width: 300,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    backgroundImage: AssetImage('images/profile-pic.png'),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

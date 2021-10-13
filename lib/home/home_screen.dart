import 'package:flutter/material.dart';
import 'package:portfolio/utils/styles.dart';
import 'package:portfolio/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: backgroundColorLight,
      body: Column(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'I\'m Sukhdip Singh',
                      style: TextStyle(
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
                  child: Image.asset(
                    'images/profile-pic.png',
                    height: 300,
                    width: 300,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

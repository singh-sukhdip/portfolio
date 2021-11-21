import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/home/home_controller.dart';
import 'package:portfolio/utils/styles.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:portfolio/widgets/custom_card.dart';
import 'package:portfolio/widgets/custom_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:js' as js;

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
      body: SingleChildScrollView(
        //padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          //constraints: BoxConstraints(maxWidth: 1200),
          padding: EdgeInsets.symmetric(horizontal: context.width * 0.1),
          child: Column(children: [
            const SizedBox(
              height: 70,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 70,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text('Hello',
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
                      'I\'m Sukhdip Singh',
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
                      height: 5,
                    ),
                    // Text(
                    //   'Flutter developer',
                    //   style: TextStyle(color: Colors.grey[700], fontSize: 25),
                    // ),
                    DefaultTextStyle(
                      style: TextStyle(color: Colors.grey[700], fontSize: 25
                          //fontFamily: 'Agne',
                          ),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText('Flutter developer',
                              speed: Duration(milliseconds: 100)),
                          TypewriterAnimatedText('Backend developer',
                              speed: Duration(milliseconds: 100)),
                          //TypewriterAnimatedText('Do not patch bugs out, rewrite them'),
                          //TypewriterAnimatedText('Do not test bugs out, design them out'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      title: 'More About Me',
                      onTap: () {},
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                        width: 10,
                        color: Get.isDarkMode
                            ? Colors.grey[800]!
                            : Colors.grey[300]!),
                    boxShadow: [
                      BoxShadow(
                          color: Get.isDarkMode
                              ? Colors.grey[700]!
                              : Colors.grey[700]!,
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
                    backgroundColor:
                        Get.isDarkMode ? Colors.grey[600]! : Colors.grey[200],
                    backgroundImage: AssetImage('images/profile-pic.png'),
                  ),
                ),
                Spacer(),
                Column(
                  children: [
                    CustomIcon(icon: Icons.settings, onTap: () {}),
                    const SizedBox(
                      height: 20,
                    ),
                    GetBuilder<HomeController>(
                      //init: MyController(),
                      //initState: (_) {},
                      builder: (_) {
                        return CustomIcon(
                            icon: HomeController.to.themeIcon,
                            onTap: () {
                              HomeController.to.changeTheme();
                            });
                      },
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 130,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'MAIN INFO',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.pink[300],
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'ABOUT ME',
                  style: TextStyle(
                      fontSize: 30,
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                        width: 10,
                        color: Get.isDarkMode
                            ? Colors.grey[800]!
                            : Colors.grey[300]!),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[700]!,
                          offset: const Offset(3.0, 3.0),
                          blurRadius: 8.0,
                          spreadRadius: 2.0)
                    ],
                    shape: BoxShape.rectangle,
                    color:
                        Get.isDarkMode ? Colors.grey[600]! : Colors.grey[200],
                  ),
                  height: 300,
                  width: 300,
                  child: Image.asset(
                    'assets/images/profile-pic.png',
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Column(
                    children: [
                      SelectableText(
                        'Hi! My name is Sukhdip Singh. I am a flutter developer. I have developed two main apps Elector search and mroznamcha which are available on playstore other than this i have worked on other projects also.',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          CustomButton(title: 'Download CV', onTap: () {}),
                          const SizedBox(
                            width: 30,
                          ),
                          CustomButton(title: 'Hire Me', onTap: () {}),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
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
                      'https://twitter.com/Sukhdip82635159',
                    ]);
                  },
                  //color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 500,
              alignment: Alignment.center,
              child: TabBar(
                //indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.transparent,
                tabs: [
                  Tab(child: Text('Skills')),
                  Tab(child: Text('Experience')),
                  Tab(child: Text('Education')),
                ],
                controller: HomeController.to.tabController,
                onTap: (int index) {
                  HomeController.to.changeTabBarIndex(index);
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GetBuilder<HomeController>(
              builder: (_) {
                return IndexedStack(
                  index: HomeController.to.selectedIndex,
                  alignment: Alignment.center,
                  children: [
                    Visibility(
                        maintainState: true,
                        visible: HomeController.to.selectedIndex == 0,
                        child: Skills()),
                    Visibility(
                        maintainState: true,
                        visible: HomeController.to.selectedIndex == 1,
                        child: Experience()),
                    Visibility(
                      maintainState: true,
                      visible: HomeController.to.selectedIndex == 2,
                      child: Education(),
                    )
                  ],
                );
              },
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'PORTFOLIO',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Colors.pink[300], fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'LATEST WORKS',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomCard(
                  image: 'assets/images/1.png',
                  text: 'Personal Portfolio',
                ),
                CustomCard(
                  image: 'assets/images/2.png',
                  text: 'Wedding Couple',
                ),
                CustomCard(
                  image: 'assets/images/3.png',
                  text: 'Product Landing Page',
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
          ]),
        ),
      ),
    );
  }
}

class Education extends StatelessWidget {
  const Education({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('education'),
    );
  }
}

class Experience extends StatelessWidget {
  const Experience({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('mRoznamcha app'),
          Text('Elector Search app'),
          Text('portfolio website'),
        ],
      ),
    );
  }
}

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          EachSkillRow(
            skillName: 'Flutter',
            skillPerCent: 0.8,
          ),
        ],
      ),
    );
  }
}

class EachSkillRow extends StatelessWidget {
  final String skillName;
  final double skillPerCent;
  const EachSkillRow({
    Key? key,
    required this.skillName,
    required this.skillPerCent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          skillName,
          style: TextStyle(color: greyFontColor),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          width: 300,
          child: LinearProgressIndicator(
            color: Get.isDarkMode ? backgroundColorLight : backgroundColorDark,
            backgroundColor:
                Get.isDarkMode ? backgroundColorDark : backgroundColorLight,
            value: skillPerCent,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Text('${skillPerCent * 100}%')
      ],
    );
  }
}

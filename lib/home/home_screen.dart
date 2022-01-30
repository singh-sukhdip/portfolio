import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/home/components/about_me.dart';
import 'package:portfolio/home/components/education.dart';
import 'package:portfolio/home/components/experience.dart';
import 'package:portfolio/home/components/header_info.dart';
import 'package:portfolio/home/components/large_heading.dart';
import 'package:portfolio/home/components/profile_pic_circular.dart';
import 'package:portfolio/home/components/profile_pic_rectangular.dart';
import 'package:portfolio/home/components/projects.dart';
import 'package:portfolio/home/components/side_icons.dart';
import 'package:portfolio/home/components/skills.dart';
import 'package:portfolio/home/components/small_heading.dart';
import 'package:portfolio/home/components/social_icons.dart';
import 'package:portfolio/home/home_controller.dart';
import 'package:portfolio/widgets/contact_card.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isMobile = ResponsiveWidget.isMobile(context);
    var isTablet = ResponsiveWidget.isTablet(context);
    var isDesktop = ResponsiveWidget.isDesktop(context);
    //this line is required on every screen to change theme using get
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      //extendBodyBehindAppBar: true,

      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   actions: [
      //     CustomIcon(
      //       icon: Icons.menu_rounded,
      //       onTap: () {},
      //     ),
      //     SizedBox(
      //       width: Get.width * 0.1,
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
        //padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          constraints: BoxConstraints(minWidth: 600),
          padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.1, vertical: Get.height * 0.07),
          child: Column(children: [
            // const SizedBox(
            //   height: 70,
            // ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(fit: FlexFit.tight, child: HeaderInfo()),
                isDesktop ? Spacer() : Container(),
                isDesktop ? ProfilePicCircular() : Container(),
                SizedBox(
                  width: 40,
                ),
                SideIcons()
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SmallHeading(text: 'main info'.tr),
                const SizedBox(
                  height: 15,
                ),
                LargeHeading(text: 'about me'.tr),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            !isMobile
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ProfilePicRectangular(),
                          const SizedBox(
                            height: 30,
                          ),
                          SocialIcons(),
                        ],
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      Expanded(
                        child: AboutMe(),
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ProfilePicRectangular(),
                      const SizedBox(
                        height: 30,
                      ),
                      SocialIcons(),
                      const SizedBox(
                        height: 40,
                      ),
                      AboutMe(),
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
                  Tab(child: Text('Skills'.tr)),
                  Tab(child: Text('Experience'.tr)),
                  Tab(child: Text('Education'.tr)),
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
            SmallHeading(text: 'portfolio'.tr),
            SizedBox(
              height: 10,
            ),
            LargeHeading(
              text: 'Latest works'.tr,
            ),
            const SizedBox(
              height: 50,
            ),
            Projects(),
            //),
            const SizedBox(
              height: 100,
            ),
            SmallHeading(text: 'contact'.tr),
            SizedBox(
              height: 10,
            ),
            LargeHeading(text: 'get in touch'.tr),
            const SizedBox(
              height: 50,
            ),
            Wrap(
              children: [
                ContactCard(
                  icon: FontAwesomeIcons.phone,
                  headline: 'Phone'.tr,
                  description: '+919988345270',
                ),
                ContactCard(
                  icon: FontAwesomeIcons.mailBulk,
                  headline: 'Email'.tr,
                  description: 'sukhdip4444@gmail.com',
                ),
                ContactCard(
                  icon: FontAwesomeIcons.locationArrow,
                  headline: 'Address'.tr,
                  description: 'Mandi, Himachal Pradesh, India',
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Made with '.tr),
                  Container(
                      height: 26,
                      child: Image.asset(
                        'images/heart.png',
                        fit: BoxFit.contain,
                      )),
                  Text('  in Flutter'),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/home/home_controller.dart';
import 'package:portfolio/widgets/custom_icon.dart';

class SideIcons extends StatelessWidget {
  const SideIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIcon(
            icon: Icons.settings,
            onTap: () {
              HomeController.to.openSettingsDialog();
            }),
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
    );
  }
}

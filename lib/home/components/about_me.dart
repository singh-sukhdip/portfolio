import 'package:flutter/material.dart';
import 'package:portfolio/home/home_controller.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:get/get.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          'about_me_details'.tr,
          style: TextStyle(color: Colors.grey, fontSize: 18),
        ),
        const SizedBox(
          height: 40,
        ),
        Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: CustomButton(
                  title: 'download_CV'.tr,
                  onTap: () {
                    HomeController.to.downloadResume(
                        'assets/files/Sukhdip_Singh_Resume.pdf');
                  }),
            ),
            const SizedBox(
              width: 30,
            ),
            //CustomButton(title: 'Hire Me', onTap: () {}),
          ],
        ),
      ],
    );
  }
}

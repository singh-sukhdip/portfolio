import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/styles.dart';

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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          EachSkillRow(
            skillName: 'Flutter',
            skillPerCent: 0.8,
          ),
          EachSkillRow(
            skillName: 'Blockchain',
            skillPerCent: 0.1,
          ),
          EachSkillRow(
            skillName: 'Database',
            skillPerCent: 0.5,
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            skillName,
            style: TextStyle(color: greyFontColor),
          ),
          const SizedBox(
            width: 20,
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              width: 300,
              child: LinearProgressIndicator(
                color:
                    Get.isDarkMode ? backgroundColorLight : backgroundColorDark,
                backgroundColor:
                    Get.isDarkMode ? backgroundColorDark : backgroundColorLight,
                value: skillPerCent,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Text('${skillPerCent * 100}%')
        ],
      ),
    );
  }
}

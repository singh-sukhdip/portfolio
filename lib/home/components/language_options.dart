import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/services/language/language_service.dart';

class LanguageOptions extends StatelessWidget {
  const LanguageOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: LanguageService.to.languages
            .map((lang) => Card(
                  elevation: 2.9,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    leading: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(lang.langIcon!)),
                    title: Text(lang.langName!),
                    trailing: Obx(() {
                      return FaIcon(
                        FontAwesomeIcons.checkCircle,
                        color: LanguageService
                                    .to.tempSelectedLanguage.value.langName ==
                                lang.langName
                            ? Colors.green
                            : Colors.grey,
                      );
                    }),
                    onTap: () {
                      LanguageService.to.tempSelectedLanguage.value = lang;
                    },
                  ),
                ))
            .toList());
  }
}

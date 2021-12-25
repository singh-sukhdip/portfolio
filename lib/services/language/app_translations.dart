import 'package:get/route_manager.dart';
import 'package:portfolio/services/language/lang/de_DE.dart';
import 'package:portfolio/services/language/lang/en_US.dart';
import 'package:portfolio/services/language/lang/hi_IN.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUS,
        'hi_IN': hiIN,
        'de_DE': deDE,
      };
}

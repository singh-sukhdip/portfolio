import 'package:get/get.dart';
import 'package:portfolio/contact_me/contact_me.dart';
import 'package:portfolio/home/home_screen.dart';
import 'package:portfolio/not_found.dart';

class Routes {
  static final screens = [
    GetPage(name: '/home', page: () => HomeScreen()),
    GetPage(name: '/contactMe', page: () => ContactMe()),
    GetPage(name: '/notFound', page: () => NotFound()),
  ];
}

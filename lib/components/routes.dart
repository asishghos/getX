import 'package:get/get.dart';
import 'package:getx_application/pages/about_page.dart';
import 'package:getx_application/pages/contact_page.dart';
import 'package:getx_application/pages/home_page.dart';

final allPages = [
  GetPage(name: '/', page: () => HomePage()),
  GetPage(
      name: '/about',
      page: () => AboutPage(),
      transition: Transition.leftToRight),
  GetPage(name: '/contact', page: () => ContactPage()),
];

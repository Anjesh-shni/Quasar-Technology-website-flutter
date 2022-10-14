import 'package:get/get.dart';
import 'package:quasar_website/Pages/page_helper/Blog.dart';
import '../HomePage/homepage.dart';
import '../page_helper/About.dart';
import '../page_helper/Contact.dart';
import '../page_helper/Resume.dart';

class RouteHelper {
  static const String home = "/";
  static const String about = "/about";
  static const String contact = "/contact";
  static const String resume = "/resume";
  static const String help = "/help";
  static const String blog = "/blog";

  // with page id
  static String getHomePage() => "$home";
  static String getAbout() => "$about";
  static String getContact() => "$contact";
  static String getResume() => "$resume";
  static String getHelp() => "$help";
  static String getBlog() => "$blog";

  static List<GetPage> routes = [
    GetPage(
      name: home,
      page: () => const HomePage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: about,
      page: () => const About(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: contact,
      page: () => Contact(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: blog,
      page: () => Blog(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: resume,
      page: () => Resume(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: help,
      page: () => Resume(),
      transition: Transition.fadeIn,
    ),
  ];
}

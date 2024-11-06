import 'package:get/get.dart';
import 'package:taskfly/view/screens/home_screen/post_task.dart';
import 'package:taskfly/view/screens/home_screen/question_screen.dart';

import '../view/screens/bottom_nav_screen/bottom_nav_screen.dart';

class AppRoute {
  //===============================bottom nave screen
  static const bottomNavScreen = "/bottomNavScreen";
  static const catagoryScreen = "/catagoryScreen";
  static const questionScreen = "/questionScreen";

  static List<GetPage> pages = [
    GetPage(
        name: bottomNavScreen,
        page: () => BottomNavScreen(),
        transition: Transition.leftToRightWithFade),
    GetPage(
        name: catagoryScreen,
        page: () => PostTaskScreen(),
        transition: Transition.leftToRightWithFade),
    GetPage(
        name: questionScreen,
        page: () => QuestionScreen(),
        transition: Transition.leftToRightWithFade),
  ];
}

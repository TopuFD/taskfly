import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskfly/main.dart';
import 'package:taskfly/utils/image/logo.dart';
import 'package:taskfly/view/screens/chat_screen/chat_screen.dart';
import 'package:taskfly/view/screens/home_screen/home_screen.dart';
import 'package:taskfly/view/screens/profile_screen/profile_screen.dart';
import 'package:taskfly/view/screens/task_screens/task_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List pages = [HomeScreen(), TaskScreen(), ChatScreen(), ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        height: 68.h,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.r),
          topRight: Radius.circular(12.r),
        )),
        child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
                print(currentIndex.toString());
              });
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Color(0xB2023E8A),
                  icon: SvgPicture.asset(
                    Logo.home,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xB2023E8A),
                  icon: SvgPicture.asset(Logo.document),
                  label: ""),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xB2023E8A),
                  icon: SvgPicture.asset(Logo.chat),
                  label: ""),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xB2023E8A),
                  icon: SvgPicture.asset(Logo.profile),
                  label: ""),
            ]),
      ),
    );
  }
}

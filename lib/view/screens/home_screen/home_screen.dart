import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:taskfly/controller/home-controller/home_controller.dart';
import 'package:taskfly/utils/image/logo.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  HomeController homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        actions: [
          InkWell(onTap: () {}, child: SvgPicture.asset(Logo.microphone)),
          SizedBox(
            width: 5.w,
          ),
          InkWell(onTap: () {}, child: SvgPicture.asset(Logo.notification)),
          SizedBox(
            width: 15.w,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //=============================================================================post task
                  customHomeItem(
                      ontap: () {
                        homeController.isButtonIndex.value = 0;
                      },
                      index: 0,
                      iconData: Icons.picture_as_pdf,
                      title: "Post Task"),

                  //=============================================================================post task
                  customHomeItem(
                      ontap: () {
                        homeController.isButtonIndex.value = 1;
                      },
                      index: 1,
                      iconData: Icons.search,
                      title: "Search"),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //=============================================================================post task
                  customHomeItem(
                      ontap: () {
                        homeController.isButtonIndex.value = 2;
                      },
                      index: 2,
                      iconData: Icons.filter,
                      title: "Filter"),

                  //=============================================================================post task
                  customHomeItem(
                      ontap: () {
                        homeController.isButtonIndex.value = 3;
                      },
                      index: 3,
                      iconData: Icons.short_text,
                      title: "Short"),
                ],
              ),
              SizedBox(
                height: Get.height * .05,
              ),
              //==============================================================available takd
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Available Tasks',
                  style: TextStyle(
                    color: Color(0xFF1F2852),
                    fontSize: 24,
                    fontFamily: 'Lexend Deca',
                    fontWeight: FontWeight.w500,
                    height: 0.05,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              //=================================================================task list
              ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, indext) {
                    return taskItem(
                        title: "Car Wash",
                        subtitle:
                            "Deep clean service refreshes your car's\n entire interior.",
                        date: 'Wed, 6 Feb 2022');
                  }),
            ],
          ),
        ),
      ),
    );
  }

  //==============================================================================custom catagory item============================
  customHomeItem(
      {IconData? iconData, String? title, VoidCallback? ontap, int? index}) {
    return Obx(() {
      return InkWell(
        onTap: ontap,
        child: Container(
            width: 164.w,
            height: 42.h,
            decoration: BoxDecoration(
              color: homeController.isButtonIndex.value == index
                  ? const Color(0xFF023E8A)
                  : Colors.white,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(width: 1, color: const Color(0xFF023E8A)),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 6,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iconData!,
                    color: homeController.isButtonIndex.value == index
                        ? Colors.white
                        : const Color(0xFF023E8A),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    title!,
                    style: TextStyle(
                      color: homeController.isButtonIndex.value == index
                          ? Colors.white
                          : const Color(0xFF023E8A),
                      fontSize: 20,
                      fontFamily: 'Lexend Deca',
                      fontWeight: FontWeight.w600,
                      height: 0.06,
                    ),
                  ),
                ],
              ),
            )),
      );
    });
  }

  //==========================================================================task item
  taskItem({String? title, String? subtitle, String? date}) {
    return Container(
      width: 343.w,
      height: 149.h,
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.symmetric(horizontal: Get.width * .1, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xFFE6ECF3), Colors.white]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //===========================================car wash
          Text(
            title!,
            style: const TextStyle(
              color: Color(0xFF1F2852),
              fontSize: 20,
              fontFamily: 'Lexend Deca',
              fontWeight: FontWeight.w500,
              height: 0.06,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          //===============================================doc text
          Text(
            subtitle!,
            style: const TextStyle(
              color: Color(0xFF4C5375),
              fontSize: 12,
              fontFamily: 'Lexend Deca',
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          //============================================due date text
          const Text(
            'Due date',
            style: TextStyle(
              color: Color(0xFF989CAF),
              fontSize: 16,
              fontFamily: 'Lexend Deca',
              fontWeight: FontWeight.w500,
              height: 0.07,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          //================================================date
          Row(
            children: [
              const Icon(Icons.calendar_month),
              Text(
                date!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF989CAF),
                  fontSize: 12,
                  fontFamily: 'Lexend Deca',
                  fontWeight: FontWeight.w400,
                  height: 0.09,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

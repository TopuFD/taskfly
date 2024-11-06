import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:taskfly/controller/home-controller/home_controller.dart';
import 'package:taskfly/utils/image/logo.dart';
import 'package:taskfly/view/widgets/custom_appbar.dart';

class PostTaskScreen extends StatelessWidget {
  PostTaskScreen({super.key});
  HomeController homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: CustomAppbar(title: "Post Task")),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            //===========================================select your catagory text
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Select your category :',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Lexend Deca',
                  fontWeight: FontWeight.w400,
                  height: 0.08,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            //=================================================catagory item
            GridView.builder(
                shrinkWrap: true,
                itemCount: homeController.catagoryIconList.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return catagoryitem(
                    iconPath: Logo.admin,
                    title: homeController.catagoryTitle[index],
                  );
                })
          ],
        ),
      ),
    );
  }

  catagoryitem({String? iconPath, String? title, VoidCallback? ontap}) {
    return InkWell(
      onTap: ontap,
      child: Column(
        children: [
          Container(
            height: 74.h,
            width: 74.w,
            decoration: const BoxDecoration(
              color: Color(0xB2023E8A),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: SvgPicture.asset(iconPath!),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            title!,
            style: TextStyle(fontSize: 20.sp, color: const Color(0xB2023E8A)),
          )
        ],
      ),
    );
  }
}

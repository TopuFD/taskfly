import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomAppbar extends StatelessWidget {
  CustomAppbar({super.key, required this.title, this.fontsize});
  String title;
  double? fontsize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      leading: InkWell(
        onTap: () => Get.back(),
        child: Container(
          height: 30.h,
          width: 30.w,
          margin: EdgeInsets.only(left: 10.w),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xB2023E8A),
              )),
          child: const Center(
            child: Icon(
              Icons.arrow_back,
              color: Color(0xB2023E8A),
            ),
          ),
        ),
      ),
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          color: Color(0xFF1F2852),
          fontSize: fontsize ?? 20,
          fontFamily: 'Lexend Deca',
          fontWeight: FontWeight.w500,
          height: 1,
        ),
      ),
    );
  }
}

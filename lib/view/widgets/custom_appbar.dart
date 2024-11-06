import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbar extends StatelessWidget {
  CustomAppbar({super.key, required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(
        height: 50.h,
        width: 50.w,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
              color: Color(0xB2023E8A),
            )),
        child: Center(
          child: Icon(
            Icons.arrow_back,
            color: Color(0xB2023E8A),
          ),
        ),
      ),
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          color: Color(0xFF1F2852),
          fontSize: 20,
          fontFamily: 'Lexend Deca',
          fontWeight: FontWeight.w500,
          height: 0.06,
        ),
      ),
    );
  }
}

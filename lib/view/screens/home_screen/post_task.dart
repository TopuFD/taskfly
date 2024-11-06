import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskfly/view/widgets/custom_appbar.dart';

class PostTaskScreen extends StatelessWidget {
  const PostTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.h),
          child: CustomAppbar(title: "Post Task")),
      body: Column(
        children: [
          //===========================================select your catagory text
          Text(
            'Select your category :',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Lexend Deca',
              fontWeight: FontWeight.w400,
              height: 0.08,
            ),
          ),
          Container(
            height: 74.h,
            width: 74.w,
            decoration: BoxDecoration(
              color: Color(0xB2023E8A),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: SvgPicture.asset(assetName),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taskfly/controller/home-controller/home_controller.dart';
import 'package:taskfly/view/widgets/custom_appbar.dart';
import 'package:taskfly/view/widgets/custom_text_field.dart';

class QuestionScreen extends StatelessWidget {
  QuestionScreen({super.key});

  HomeController homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: CustomAppbar(
            title: "Tell us what you need to\nbe done?",
            fontsize: 15.sp,
          )),
      body: Column(
        children: [
          SizedBox(
            height: 15.h,
          ),
          //===========================================================step button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              stepItem(
                title: "Step1",
                index: 0,
                ontap: () {
                  homeController.stepIndex.value = 0;
                },
              ),
              stepItem(
                title: "Step2",
                index: 1,
                ontap: () {
                  homeController.stepIndex.value = 1;
                },
              ),
              stepItem(
                title: "Step3",
                index: 2,
                ontap: () {
                  homeController.stepIndex.value = 2;
                },
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          //==================================================stepwaise body
          Obx(() {
            return homeController.stepIndex.value == 0
                ? stepOneBody()
                : homeController.stepIndex.value == 1
                    ? stepTwoBody()
                    : stepThreeBody();
          })
        ],
      ),
    );
  }

  //=================================================================custom step button
  Widget stepItem({String? title, VoidCallback? ontap, int? index}) {
    return Obx(() {
      return InkWell(
        onTap: ontap,
        child: Container(
          width: 102.w,
          height: 42.h,
          decoration: BoxDecoration(
              color: homeController.stepIndex.value == index
                  ? const Color(0xFFB1C3DB)
                  : Colors.white,
              borderRadius: BorderRadius.circular(12.r)),
          child: Center(
            child: Text(
              title!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF1F2852),
                fontSize: 16,
                fontFamily: 'Lexend Deca',
                fontWeight: FontWeight.w400,
                height: 0.07,
              ),
            ),
          ),
        ),
      );
    });
  }

  //=========================================================step one body
  Widget stepOneBody() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        children: [
          Form(
              child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'What do you need?',
                  style: TextStyle(
                    color: Color(0xFF1F2852),
                    fontSize: 16,
                    fontFamily: 'Lexend Deca',
                    fontWeight: FontWeight.w500,
                    height: 0.07,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              //==========================================================first question
              CustomTextField(
                textEditingController: homeController.firstController.value,
                hintText: "Enter your task name",
              ),
              SizedBox(
                height: Get.height * .03,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Details',
                  style: TextStyle(
                    color: Color(0xFF1F2852),
                    fontSize: 16,
                    fontFamily: 'Lexend Deca',
                    fontWeight: FontWeight.w500,
                    height: 0.07,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              //==========================================================first question
              CustomTextField(
                textEditingController: homeController.firstController.value,
                hintText: "Give details about your task",
                maxLines: 4,
                height: 122.h,
              ),
            ],
          )),
          SizedBox(
            height: Get.height * .02,
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Details',
              style: TextStyle(
                color: Color(0xFF1F2852),
                fontSize: 16,
                fontFamily: 'Lexend Deca',
                fontWeight: FontWeight.w500,
                height: 0.07,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: Get.width,
              height: 80.h,
              decoration: BoxDecoration(
                  color: const Color(0xFFE6ECF3),
                  borderRadius: BorderRadius.circular(12.r)),
              child: const Center(
                child: Icon(Icons.image),
              ),
            ),
          )
        ],
      ),
    );
  }

  //=======================================================stepTwoBody
  Widget stepTwoBody() {
    return Container();
  }

  //=======================================================stepthreeBody
  Widget stepThreeBody() {
    return Container(
      height: 40,
      color: const Color.fromARGB(255, 245, 229, 5),
    );
  }
}

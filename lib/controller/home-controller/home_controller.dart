import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskfly/utils/image/logo.dart';

class HomeController extends GetxController {
  RxInt isButtonIndex = 0.obs;
  RxInt stepIndex = 0.obs;
  //=============================================step one question controller
  Rx<TextEditingController> firstController = TextEditingController().obs;
  Rx<TextEditingController> secondController = TextEditingController().obs;
  Rx<TextEditingController> thirdController = TextEditingController().obs;
  //===========================================catagory icon list
  List catagoryIconList = [
    Logo.cleaning,
    Logo.assemble,
    Logo.handyman,
    Logo.delevery,
    Logo.gardening,
    Logo.removalList,
    Logo.admin,
    Logo.computer,
    Logo.photography,
    Logo.other
  ];

  //===========================================catagory title list
  List catagoryTitle = [
    "Cleanign",
    "Assemble",
    "Handyman",
    "Delivery",
    "Gardening",
    "Removallist",
    "Admin",
    "IT",
    "Photography",
    "Others"
  ];
}

import 'package:get/get.dart';
import 'package:taskfly/controller/home-controller/home_controller.dart';

class DependencyIndjection extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}

import 'package:get/get.dart';
import 'package:primeiro_app/app/controllers/home_controller.dart';
 
class HomeBinding extends Bindings {
  @override 
  void dependencies() { 
    Get.put(HomeController());
  } 
}
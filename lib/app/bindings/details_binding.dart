import 'package:get/get.dart';
import 'package:primeiro_app/app/controllers/details_controller.dart';
 
class DetailsBinding extends Bindings { 
  @override 
  void dependencies() { 
    Get.put(DetailsController());
  }
}
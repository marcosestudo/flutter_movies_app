import 'package:get/get.dart';
import 'package:primeiro_app/app/controllers/counter_controller.dart';
 
class CounterBinding extends Bindings { 
  @override 
  void dependencies() { 
    Get.put(CounterController());
  }
}
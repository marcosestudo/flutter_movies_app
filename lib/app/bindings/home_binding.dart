import 'package:get/get.dart'; 
 
class NameBinding extends Bindings { 
  @override 
  void dependencies() { 
    Get.lazyPut(() => XxxController()); 
  } 
}
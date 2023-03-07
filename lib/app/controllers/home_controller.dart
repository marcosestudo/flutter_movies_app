import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:primeiro_app/app/routes/app_pages.dart';

class HomeController extends GetxController {

  final _obj = ''.obs;
  set obj(value) => _obj.value = value;
  get obj => _obj.value;

  void onPressed() {
    Get.toNamed(Routes.DETAILS); //método para navegação por rota nomeada no getx
  }

}
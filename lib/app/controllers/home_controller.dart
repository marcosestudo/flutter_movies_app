import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:primeiro_app/app/routes/app_pages.dart';

class HomeController extends GetxController {

  void onPressed() {
    // Get.toNamed() método para navegação por rota nomeada no getx com possibilidade de voltar
    // Get.offNamed() navega pra página e não pode voltar pra página anterior, se clicar na seta pra voltar, sai do app
    // Get.offAllNamed() navega pra uma página que fecha todas as anteriores
    Get.toNamed(Routes.DETAILS);
  }

}
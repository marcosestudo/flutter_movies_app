import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:primeiro_app/app/routes/app_pages.dart';

class HomeController extends GetxController {

  bool isLoading = true;

  void onPressed() {
    // Get.toNamed() método para navegação por rota nomeada no getx com possibilidade de voltar
    // Get.offNamed() navega pra página e não pode voltar pra página anterior, se clicar na seta pra voltar, sai do app
    // Get.offAllNamed() navega pra uma página que fecha todas as anteriores
    Get.toNamed(Routes.DETAILS);
  }

  // função onInit() é chamada assim que a tela começa a ser carregada
  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  // simulando busca em API pra demonstrar gerenciamento de estados
  void fetchData() {
    isLoading = true;
    update(); // chama o getbuilder em home_page.dart para atualizar a página
    // call repo to fetch data
    Future.delayed(const Duration(seconds: 1)).then((value) {
      isLoading = false;
      update();
    });
  }
}
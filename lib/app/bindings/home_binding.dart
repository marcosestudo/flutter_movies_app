import 'package:get/get.dart';
import 'package:primeiro_app/app/controllers/home_controller.dart';
 
class HomeBinding extends Bindings {
  @override 
  void dependencies() {
    // a binding sobreescreve a rota da view
    // pra páginas complexas, fica mais organizado usar bindings ao invés de
    // fazer tudo na view
    // "permanent: true" mantém ocontrolador ativo, útil para manter configurações,
    // um boa prática, nesse caso, é ter um arquivo de inicialização "initial_bindings"
    Get.put(HomeController(), permanent: true);
  } 
}
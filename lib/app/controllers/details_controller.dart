import 'package:get/get.dart';
import 'package:meta/meta.dart';

class DetailsController extends GetxController {
  // obs == variável observable (observável), uma stream de dados
  // o app etá sempre "olhando" a variávela obs pra ver se ela é modoficada
  // se em algum momento ela for alterada, será atualizada na tela semprecisrmos chamar a função update()
  final _obj = ''.obs;
  set obj(value) => _obj.value = value;
  get obj => _obj.value;

  // reactive state
  // a variável do reactive state precisa ser observable
  final _number = 0.obs;
  set number(value) => _number.value = value;
  get number => _number.value;

  void onPressedFloatingAction() {
    number++;
  }
}
import 'package:get/get.dart';
import 'package:primeiro_app/app/controllers/home_controller.dart';

class DetailsController extends GetxController {
  final _likedMovie = Get.find<HomeController>().liked.obs;
  get likedMovie => _likedMovie.value;
  set likedMovie(value) => _likedMovie.value = value;

  void onPressedLikeBtn() {
    likedMovie = !likedMovie;
  }
}
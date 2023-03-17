import 'package:get/get.dart';
import 'package:primeiro_app/app/controllers/home_controller.dart';

class DetailsController extends HomeController {
  // final _likedMovie = false.obs;
  // get likedMovie => _likedMovie.value;
  // set likedMovie(value) => _likedMovie.value = value;

  // TODO: tornar likes permanentes
  void onPressedLikeBtn() {
    liked[likedIndex] = liked[likedIndex] == 0 ? 1 : 0 ;
  }
}
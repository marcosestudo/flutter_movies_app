import 'package:get/get.dart';

class DetailsController extends GetxController {
  final _likedMovie = false.obs;
  get likedMovie => _likedMovie.value;
  set likedMovie(value) => _likedMovie.value = value;

  void onPressedLikeBtn() {
    likedMovie = !likedMovie;
  }
}
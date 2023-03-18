import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:primeiro_app/app/data/repository/movie_repository.dart';
import 'package:primeiro_app/app/controllers/home_controller.dart';

class DetailsController extends GetxController {
  final MovieRepository? movieRepository;
  bool loadingLike = false;

  DetailsController({@required this.movieRepository}) : assert(movieRepository != null);

  final index = Get.find<HomeController>().onPressedIndex;

  final _likedMovie = Get.find<HomeController>().liked.obs;
  get likedMovie => _likedMovie.value;
  set likedMovie(value) => _likedMovie.value = value;

  void onPressedLikeBtn() {
    likedMovie = !likedMovie;

    loadingLike = true;
    update();
    movieRepository?.likedEdit(index).then((value) {
      loadingLike = false;
      update();
    });
  }
}
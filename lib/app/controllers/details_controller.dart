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

  @override
  void onInit() {
    loadingLike = true;
    movieRepository?.getLike(index).then((value) {
      likedMovie = value;
      loadingLike = false;
      update();
    });
    super.onInit();
  }

  void onPressedLikeBtn() {
    likedMovie = !likedMovie;
    update();
    movieRepository?.likedEdit(index + 1);
  }
}
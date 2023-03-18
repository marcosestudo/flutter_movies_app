import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:primeiro_app/app/data/repository/movie_repository.dart';
import 'package:primeiro_app/app/controllers/home_controller.dart';

class DetailsController extends GetxController {
  final MovieRepository? movieRepository;

  DetailsController({@required this.movieRepository}) : assert(movieRepository != null);

  final _likedMovie = Get.find<HomeController>().liked.obs;
  get likedMovie => _likedMovie.value;
  set likedMovie(value) => _likedMovie.value = value;

  final index = Get.find<HomeController>().onPressedIndex;

  void onPressedLikeBtn() {
    likedMovie = !likedMovie;
    movieRepository?.likedEdit(index);
  }
}
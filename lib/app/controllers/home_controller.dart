import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:primeiro_app/app/data/model/movie_model.dart';
import 'package:primeiro_app/app/data/repository/movie_repository.dart';


class HomeController extends GetxController {

  final MovieRepository? movieRepository;
  bool isLoading = true;

  HomeController({@required this.movieRepository}) : assert(movieRepository != null);

  List<MovieModel> movieList = [];
  List<String?> titles = [];
  List<Widget> images = [];
  List<String> imgUrl = [];
  List<String> verticalCardPagerTitles = [];

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  void fetchData() {
    movieRepository?.getAll().then((value) {
      movieList = value;
      fillMovieInfo(movieList);
      isLoading = false;
      update();
    });
  }

  void fillMovieInfo(List<MovieModel> movieList) {
    int i = 1;
    for (MovieModel movie in movieList) {
      verticalCardPagerTitles.add("");
      titles.add(movie.titulo);
      imgUrl.add(movie.img);
      images.add(
        Hero(
          tag: i,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(
              movie.img,
              fit: BoxFit.cover,
            ),
          ),
        ),);
      i++;
    }
  }
}

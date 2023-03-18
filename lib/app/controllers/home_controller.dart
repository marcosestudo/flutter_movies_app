import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:primeiro_app/app/data/model/movie_model.dart';
import 'package:primeiro_app/app/data/repository/movie_repository.dart';
import 'package:primeiro_app/app/routes/app_pages.dart';

class HomeController extends GetxController {
  final MovieRepository? movieRepository;
  bool isLoading = true;

  HomeController({@required this.movieRepository}) : assert(movieRepository != null);

  List<MovieModel> movieList = [];
  List<int> likedList = [];
  late bool liked;
  late int onPressedIndex;
  List<Widget> images = [];
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
      likedList.add(movie.liked);
      verticalCardPagerTitles.add("");
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

  // o index vem do onSelectedItem na home page
  // index + 1 na tag pra acompanhar a tag que começa com 1 no método fillMovieInfo
  void onSelectedItem(int index) {
    liked = likedList[index] == 1 ? true : false;
    onPressedIndex = index + 1;
    Get.toNamed(
        Routes.DETAILS,
        arguments: {"movie_info": movieList[index], "tag": index + 1,}
    );
  }

  void onPressed() {
    isLoading = true;
    likedList = [];
    images = [];
    verticalCardPagerTitles = [];
    update();
    fetchData();
  }
}

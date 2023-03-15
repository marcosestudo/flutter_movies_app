import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:primeiro_app/app/data/repository/movie_repository.dart';

class HomeController extends GetxController {

    final MovieRepository? movieRepository;
    HomeController({@required this.movieRepository}) : assert(movieRepository != null);
}
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:primeiro_app/app/data/model/movie_model.dart';

const baseUrl = 'https://script.google.com/macros/s/AKfycbxrrBTyAUyCtcO4Bu_BRXvD15LwrzYi0txj-OsdhLpIb5aNpIaI9hjNfJGvUPvaFia67w/exec';

class MovieApiClient {
  final http.Client? httpClient;

  MovieApiClient({@required this.httpClient});

  Future<List<MovieModel>> getAll() async {
    try {
      final response = await httpClient!.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        List<dynamic> jsonResponse = jsonDecode(response.body);
        return jsonResponse.map((movieJson) => MovieModel.fromJson(movieJson)).toList();
      } else {
        debugPrint('Error -getAll');
      }
    } catch (e) {
      debugPrint("Error fetching from API: $e");
    }
    return [];
  }

  Future likedEdit() async {
    try {
      final response = await httpClient!.post(Uri.parse(baseUrl),
          headers: {});
      if (response.statusCode == 200) {
        // TODO: implement methods!
      } else {
        print('Error -edit');
      }
    } catch (_) {}
    return null;
  }
}

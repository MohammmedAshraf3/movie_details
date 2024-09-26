import 'dart:convert';

import 'package:moviesss/api/constants.dart';
import 'package:moviesss/model/movie_model.dart';
import 'package:http/http.dart' as http;

class Api {
  final detailsApiUrl =
      "https://api.themoviedb.org/3/movie/{movie_id}?api_key=$api_key";
  final imagesApiUrl =
      "https://api.themoviedb.org/3/movie/{movie_id}/images?api_key=$api_key";
  final releaseDateApiUrl =
      "https://api.themoviedb.org/3/movie/{movie_id}/release_dates?api_key=$api_key";
  final similarApiUrl =
      "https://api.themoviedb.org/3/movie/{movie_id}/similar?api_key=$api_key";

  Future<List<Movie>> getMovieDetails() async {
    final response = await http.get(Uri.parse(detailsApiUrl));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      List<Movie> movies = data.map((movie) => Movie.fromMap(movie)).toList();
      return movies;
    } else {
      throw Exception('Failed to load  similar movies');
    }
  }

  Future<List<Movie>> getImages() async {
    final response = await http.get(Uri.parse(imagesApiUrl));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      List<Movie> movies = data.map((movie) => Movie.fromMap(movie)).toList();
      return movies;
    } else {
      throw Exception('Failed to load  similar movies');
    }
  }

  Future<List<Movie>> getReleaseDate() async {
    final response = await http.get(Uri.parse(releaseDateApiUrl));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      List<Movie> movies = data.map((movie) => Movie.fromMap(movie)).toList();
      return movies;
    } else {
      throw Exception('Failed to load  similar movies');
    }
  }

  Future<List<Movie>> getSimilar() async {
    final response = await http.get(Uri.parse(similarApiUrl));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      List<Movie> movies = data.map((movie) => Movie.fromMap(movie)).toList();
      return movies;
    } else {
      throw Exception('Failed to load  similar movies');
    }
  }
}

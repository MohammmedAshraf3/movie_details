import 'package:flutter/material.dart';
import 'package:moviesss/movie_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie Details',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MovieDetailsScreen(
        //part el api
        title: "Movie Title",
        year: "2022",
        rating: "8.5",
        description: "Movie description",
        imageUrl: "https://via.placeholder.com/300",
        genres: ["Action", "Adventure", "Comedy"],
        similarMovies: [
          {"imageUrl": "https://via.placeholder.com/300"},
          {"imageUrl": "https://via.placeholder.com/300"},
          {"imageUrl": "https://via.placeholder.com/300"},
        ], // part el api
      ),
    );
  }
}

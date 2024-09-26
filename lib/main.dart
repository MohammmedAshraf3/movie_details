import 'package:flutter/material.dart';

import 'package:moviesss/movie_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' Movie Details',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MovieDetailsScreen(),
    );
  }
}

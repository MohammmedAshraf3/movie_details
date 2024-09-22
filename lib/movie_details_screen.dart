import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MovieDetailsScreen extends StatelessWidget {
  final String title;
  final String year;
  final String rating;
  final String description;
  final String imageUrl;
  final List<String> genres;
  final List<Map<String, dynamic>> similarMovies;

  const MovieDetailsScreen({
    Key? key,
    required this.title,
    required this.year,
    required this.rating,
    required this.description,
    required this.imageUrl,
    required this.genres,
    required this.similarMovies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff707070),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "                                                                         Movie Name",
          style: TextStyle(color: Colors.white),
          //  textAlign: TextAlign.center
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CachedNetworkImage(
                  imageUrl: imageUrl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const Icon(
                  Icons.play_circle_fill,
                  color: Colors.white,
                  size: 60,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "$year • PG-13 • 2h 7m", // Replace with actual data
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 16),
                  // Display Movie Poster
                  Row(
                    children: [
                      CachedNetworkImage(
                        imageUrl: imageUrl,
                        height: 180,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Display Genres
                            Wrap(
                              spacing: 8.0,
                              children: genres.map((genre) {
                                return Chip(
                                  label: Text(
                                    genre,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: Color(0xff514F4F),
                                );
                              }).toList(),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              description,
                              style: const TextStyle(color: Color(0xff514F4F)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Display Similar Movies
                  Text(
                    "More Like This",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),
                  Container(
                    color: Color(0xff514F4F),
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 3 / 4,
                      ),
                      itemCount: similarMovies.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: CachedNetworkImage(
                            imageUrl: similarMovies[index]["imageUrl"],
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

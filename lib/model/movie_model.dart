class Movie {
  final String movieId;
  final String title;
  final String backDropPath;
  final String overview;
  final String posterPath;
  final List<String> genres;
  final String logo_path;
  final String release_date;
  final String vote_average; //rate

  Movie(
      {required this.movieId,
      required this.title,
      required this.backDropPath,
      required this.overview,
      required this.posterPath,
      required this.genres,
      required this.logo_path,
      required this.release_date,
      required this.vote_average});

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
        movieId: map['id'],
        title: map['title'],
        backDropPath: map['backdrop_path'],
        overview: map['overview'],
        posterPath: map['poster_path'],
        genres: map['genres'],
        logo_path: map['logo_path'],
        release_date: map['release_date'],
        vote_average: map['vote_average']);
  }
}

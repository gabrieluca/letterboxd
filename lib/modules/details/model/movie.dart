import 'package:letterboxd/modules/home/model/short_movie.dart';

class Movie extends ShortMovie {
  Movie(
    super.title,
    super.overview,
    super.originalTitle,
    super.posterPath,
    super.backdropPath,
    super.isAdult,
    super.originalLanguage,
    super.releaseDate,
    this.genres,
  );

  final List<String> genres;

  // TODO implement fromMap
  // TODO Change to Letterboxd API
}

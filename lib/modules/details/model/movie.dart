import '../../../common/model/failures.dart';
import '../../home/model/language.dart';
import '../../home/model/short_movie.dart';
import 'genre.dart';

class Movie extends ShortMovie {
  Movie(
    super.id,
    super.title,
    super.originalTitle,
    super.posterPath,
    super.backdropPath,
    super.releaseDate,
    this.overview,
    this.isAdult,
    this.originalLanguage,
    this.releaseStatus,
    this.genres,
    this.tagLine,
    this.rating,
    this.duration,
  );

  final String overview;
  final bool isAdult;
  final Language originalLanguage;
  final String releaseStatus;
  final List<Genre> genres;
  final String tagLine;
  final double rating;
  final int duration;

  factory Movie.fromMap(Map<String, dynamic> json) {
    final id = json['id'];
    final title = json['title'];
    final overview = json['overview'];
    final originalTitle = json['original_title'];
    final rawOriginalLanguage = json['original_language'];
    final rawReleaseDate = json['release_date'];
    final rating = json['vote_average'];
    final duration = json['runtime'];

    if (id is! int) {
      throw MapperException(json, 'id');
    }

    if (title is! String) {
      throw MapperException(json, 'title');
    }

    if (overview is! String) {
      throw MapperException(json, 'overview');
    }

    if (originalTitle is! String) {
      throw MapperException(json, 'original_title');
    }

    if (rawOriginalLanguage is! String) {
      throw MapperException(json, 'original_language');
    }

    final originalLanguage = Language.fromString(rawOriginalLanguage);

    if (rawReleaseDate is! String) {
      throw MapperException(json, 'release_date');
    }

    final releaseDate = DateTime.tryParse(rawReleaseDate);

    if (releaseDate == null) {
      throw MapperException(json, 'release_date');
    }

    if (rating is! double) {
      throw MapperException(json, 'vote_average');
    }

    if (duration is! int) {
      throw MapperException(json, 'runtime');
    }

    var posterPath = json['poster_path'] as String?;
    var backdropPath = json['backdrop_path'] as String?;
    final isAdult = json['adult'] as bool?;
    final releaseStatus = json['status'] as String?;
    final tagLine = json['tagline'] as String?;
    final rawGenres = json['genres'] as List<dynamic>?;

    /// Avoid empty validation on UI layer
    if (posterPath?.isEmpty ?? false) {
      posterPath = null;
    }

    if (backdropPath?.isEmpty ?? false) {
      backdropPath = null;
    }

    final genres = rawGenres
        ?.whereType<Map<String, dynamic>>()
        .map(Genre.fromMap)
        .toList(growable: false);

    return Movie(
      id,
      title,
      originalTitle,
      posterPath,
      backdropPath,
      releaseDate,
      overview,
      isAdult ?? false,
      originalLanguage,
      releaseStatus ?? '',
      genres ?? [],
      tagLine ?? '',
      rating / 2, //Convert to 5 star rating
      duration,
    );
  }
}

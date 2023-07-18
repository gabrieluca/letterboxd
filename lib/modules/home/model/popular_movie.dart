import 'package:letterboxd/modules/home/model/language.dart';

import '../../../common/model/failures.dart';

class PopularMovie {
  PopularMovie(
    this.title,
    this.overview,
    this.originalTitle,
    this.posterPath,
    this.backdropPath,
    this.isAdult,
    this.originalLanguage,
    this.releaseDate,
  );

  final String title;
  final String overview;
  final String originalTitle; //Include in search
  final String? posterPath;
  final String? backdropPath;
  final bool isAdult;
  final Language originalLanguage;
  final DateTime releaseDate;

  factory PopularMovie.fromMap(Map<String, dynamic> json) {
    final title = json['title'];
    final overview = json['overview'];
    final originalTitle = json['original_title'];
    final rawOriginalLanguage = json['original_language'];
    final rawReleaseDate = json['release_date'];

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

    final posterPath = json['poster_path'] as String?;
    final backdropPath = json['backdrop_path'] as String?;
    final isAdult = json['adult'] as bool?;

    return PopularMovie(
      title,
      overview,
      originalTitle,
      posterPath,
      backdropPath,
      isAdult ?? false,
      originalLanguage,
      releaseDate,
    );
  }
}

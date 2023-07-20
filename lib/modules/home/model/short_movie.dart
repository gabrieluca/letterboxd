import '../../../common/model/failures.dart';

typedef MovieId = int;

class ShortMovie {
  ShortMovie(
    this.id,
    this.title,
    this.originalTitle,
    this.posterPath,
    this.releaseDate,
  );

  final MovieId id;
  final String title;
  final String originalTitle; //Include in search
  final String? posterPath;
  final DateTime releaseDate;

  factory ShortMovie.fromMap(Map<String, dynamic> json) {
    final id = json['id'];
    final title = json['title'];
    final originalTitle = json['original_title'];
    final rawReleaseDate = json['release_date'];

    if (id is! int) {
      throw MapperException(json, 'id');
    }

    if (title is! String) {
      throw MapperException(json, 'title');
    }

    if (originalTitle is! String) {
      throw MapperException(json, 'original_title');
    }

    if (rawReleaseDate is! String) {
      throw MapperException(json, 'release_date');
    }

    final releaseDate = DateTime.tryParse(rawReleaseDate);

    if (releaseDate == null) {
      throw MapperException(json, 'release_date');
    }

    var posterPath = json['poster_path'] as String?;

    /// Avoid empty validation on UI layer
    if (posterPath?.isEmpty ?? false) {
      posterPath = null;
    }

    return ShortMovie(
      id,
      title,
      originalTitle,
      posterPath,
      releaseDate,
    );
  }
}

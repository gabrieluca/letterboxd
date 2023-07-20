import 'package:injectable/injectable.dart';
import 'package:letterboxd/modules/details/model/movie.dart';
import 'package:letterboxd/modules/home/model/short_movie.dart';

import '../../../common/data/api/endpoints.dart';
import '../../../common/data/services/http_service.dart';

const _pageCount = 20;

abstract interface class Repository {
  Future<List<ShortMovie>> getPopularMovies([
    int? itemCount,
  ]);

  Future<Movie> getMovie(MovieId id);
}

// TODO Change to Letterboxd API
@Injectable(as: Repository)
class RepositoryImpl implements Repository {
  RepositoryImpl(this._http);

  final HttpService _http;

  @override
  Future<List<ShortMovie>> getPopularMovies([
    int? itemCount,
  ]) async {
    final page = (itemCount ?? 0) / _pageCount + 1;
    final result = await _http.get(
      Endpoints.popular,
      queryParameters: {
        'page': page,
        // if (params.language != null)
        // 'language': 'pt', //TODO [FEATURE] Change language: query parameter
      },
    );

    final data = result['results'] as List<dynamic>;

    return data
        .whereType<Map<String, dynamic>>()
        .map(ShortMovie.fromMap)
        .toList();
  }

  @override
  Future<Movie> getMovie(MovieId id) async {
    final data = await _http.get(
      Endpoints.movie(id),
      queryParameters: {
        // if (params.language != null)
        // 'language': 'pt', //TODO [FEATURE] Change language: query parameter
      },
    );

    return Movie.fromMap(data);
  }
}

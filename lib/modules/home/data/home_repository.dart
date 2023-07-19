import 'package:injectable/injectable.dart';
import 'package:letterboxd/modules/home/model/short_movie.dart';

import '../../../common/data/api/endpoints.dart';
import '../../../common/data/services/http_service.dart';

const _pageCount = 20;

abstract interface class HomeRepository {
  Future<List<ShortMovie>> getPopularMovies([
    int? itemCount,
  ]);
}

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this._http);

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
}

import 'package:injectable/injectable.dart';
import 'package:letterboxd/modules/home/model/popular_movie.dart';

import '../../../common/data/api/endpoints.dart';
import '../../../common/data/services/http_service.dart';

abstract interface class HomeRepository {
  Future<List<PopularMovie>> getPopularMovies({int? page});
}

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this._http);

  final HttpService _http;

  @override
  Future<List<PopularMovie>> getPopularMovies({int? page}) async {
    final result = await _http.get(
      Endpoints.popular,
      queryParameters: {
        'page': page,
        if (page != null)
          'language': 'pt', //TODO [FEATURE] Change language: query parameter
      },
    );

    final data = result['results'] as List<dynamic>;

    return data
        .whereType<Map<String, dynamic>>()
        .map(PopularMovie.fromMap)
        .toList();
  }
}

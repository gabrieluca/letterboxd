import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/view/widgets/movie_poster.dart';
import '../../../details/view/details_screen.dart';
import '../../bloc/popular_movies_bloc.dart';

class PopularMoviesList extends StatelessWidget {
  const PopularMoviesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularMoviesBloc, PopularMoviesState>(
      builder: (context, state) => state.map(
        loading: (_) => const SliverFillRemaining(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        error: (state) => SliverFillRemaining(
          child: Center(
            child: Text(
              state.isOffline
                  ? 'No internet connection'
                  : 'Something went wrong. Please try again later.',
            ),
          ),
        ),
        success: (state) => state.moviesList.isEmpty
            ? const SliverToBoxAdapter(
                child: Center(
                  child: Text('No movies found'),
                ),
              )
            : SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.6,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final movie = state.moviesList[index];
                    return MoviePoster(
                      movie: movie,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              shortMovie: movie,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  childCount: state.moviesList.length,
                ),
              ),
      ),
    );
  }
}

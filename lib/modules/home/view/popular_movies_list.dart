import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../details/view/movie_details_screen.dart';
import '../bloc/popular_movies_bloc.dart';
import '../../../common/view/widgets/movie_card.dart';

class PopularMoviesList extends StatelessWidget {
  const PopularMoviesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularMoviesBloc, PopularMoviesState>(
      builder: (context, state) => state.map(
        loading: (_) => const SliverToBoxAdapter(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        error: (state) => Center(
          child: SliverToBoxAdapter(
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
                    return MovieCard(
                      movie: movie,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MovieDetailsScreen(
                              movie: movie,
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

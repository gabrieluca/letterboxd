import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/popular_movies_bloc.dart';
import 'popular_movie_card.dart';

class PopularMoviesList extends StatelessWidget {
  const PopularMoviesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularMoviesBloc, PopularMoviesState>(
      builder: (context, state) {
        return state.map(
            loading: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
            error: (state) => Center(
                  child: Text(
                    state.isOffline
                        ? 'No internet connection'
                        : 'Something went wrong. Please try again later.',
                  ),
                ),
            success: (state) => state.moviesList.isEmpty
                ? const Center(
                    child: Text('No movies found'),
                  )
                : RefreshIndicator(
                    onRefresh: () async {
                      context
                          .read<PopularMoviesBloc>()
                          .add(const PopularMoviesEvent.refreshed());
                    },
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 0.6,
                      ),
                      itemCount: state.moviesList.length,
                      itemBuilder: (context, index) =>
                          PopularMovieCard(movie: state.moviesList[index]),
                    ),
                  ));
      },
    );
  }
}

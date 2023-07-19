import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/popular_movies_bloc.dart';
import 'popular_movie_card.dart';

const _loadMoreOffset = 100;

class PopularMoviesList extends StatefulWidget {
  const PopularMoviesList({
    super.key,
  });

  @override
  State<PopularMoviesList> createState() => _PopularMoviesListState();
}

class _PopularMoviesListState extends State<PopularMoviesList> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    _controller.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_scrollListener);
    super.dispose();
  }

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
                    controller: _controller,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.6,
                    ),
                    itemCount: state.moviesList.length,
                    itemBuilder: (context, index) =>
                        PopularMovieCard(movie: state.moviesList[index]),
                  ),
                ),
        );
      },
    );
  }

  void _scrollListener() {
    final nextPageTrigger =
        _controller.position.maxScrollExtent - _loadMoreOffset;
    if (_controller.position.pixels > nextPageTrigger) {
      onLoadNext();
    }
  }

  void onLoadNext() {
    final moviesList = context.read<PopularMoviesBloc>().state.moviesList;
    context.read<PopularMoviesBloc>().add(
          PopularMoviesEvent.nextFetched((
            moviesList: moviesList,
            itemCount: moviesList.length,
          )),
        );
  }
}

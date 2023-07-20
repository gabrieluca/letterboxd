import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/view/view_constants.dart';
import '../bloc/popular_movies_bloc.dart';
import 'widgets/popular_movies_list.dart';

class PopularMovieSuccess extends StatefulWidget {
  const PopularMovieSuccess({
    super.key,
  });

  @override
  State<PopularMovieSuccess> createState() => _PopularMovieSuccessState();
}

class _PopularMovieSuccessState extends State<PopularMovieSuccess> {
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
    return CustomScrollView(
      controller: _controller,
      slivers: [
        SliverToBoxAdapter(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Popular this week',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        const PopularMoviesList(),
      ],
    );
  }

  void _scrollListener() {
    final nextPageTrigger =
        _controller.position.maxScrollExtent - ViewConstants.loadMoreOffset;
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

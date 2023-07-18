import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letterboxd/modules/home/bloc/popular_movies_bloc.dart';

import '../../../common/dependencies/dependencies.dart';
import 'popular_movies_list.dart';

class PopularMoviesScreen extends StatelessWidget {
  const PopularMoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => dependencies<PopularMoviesBloc>()
        ..add(
          const PopularMoviesEvent.firstFetched(),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Letterboxd'),
        ),
        body: Column(
          children: [
            Text(
              'Popular this week',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Expanded(
              child: PopularMoviesList(),
            ),
          ],
        ),
      ),
    );
  }
}

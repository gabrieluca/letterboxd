import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letterboxd/modules/home/bloc/popular_movies_bloc.dart';

import '../../../common/dependencies/dependencies.dart';
import 'popular_movie_success.dart';

class PopularMoviesScreen extends StatelessWidget {
  const PopularMoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => dependencies.get<PopularMoviesBloc>()
        ..add(
          const PopularMoviesEvent.firstFetched(),
        ),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.all(16.0),
              child: const Text('Letterboxd'),
            ),
          ),
          body: const PopularMovieSuccess(),
        );
      }),
    );
  }
}

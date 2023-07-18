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
      create: (context) => dependencies.get<PopularMoviesBloc>()
        ..add(
          const PopularMoviesEvent.firstFetched(),
        ),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Letterboxd'),
          ),
          body: Column(
            children: [
              Row(
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
              const Expanded(
                child: PopularMoviesList(),
              ),
            ],
          ),
        );
      }),
    );
  }
}

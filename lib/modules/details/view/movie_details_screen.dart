import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/dependencies/dependencies.dart';
import '../../../common/view/view_constants.dart';
import '../../home/model/short_movie.dart';
import '../bloc/details_bloc.dart';
import 'details_content.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({
    super.key,
    required this.shortMovie,
  });

  final ShortMovie shortMovie;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => dependencies<DetailsBloc>()
        ..add(
          DetailsEvent.movieFetched(shortMovie),
        ),
      child: Scaffold(
        backgroundColor: CustomColors.detailsBackground,
        body: BlocBuilder<DetailsBloc, DetailsState>(
          builder: (context, state) {
            return state.map(
              loading: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              success: (state) => DetailsContent(movie: state.movie),
              error: (_) => const Center(
                child: Text('Error'),
              ),
            );
          },
        ),
      ),
    );
  }
}

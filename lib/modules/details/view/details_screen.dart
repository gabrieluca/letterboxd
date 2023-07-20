import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/dependencies/dependencies.dart';
import '../../../common/view/custom_colors.dart';
import '../../../common/view/view_constants.dart';
import '../../home/model/short_movie.dart';
import '../bloc/details_bloc.dart';
import 'details_success.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    required this.shortMovie, super.key,
  });

  final ShortMovie shortMovie;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late Image image;

  @override
  void initState() {
    super.initState();
    image = Image.network(
      '${ViewConstants.backdropBaseURl}${widget.shortMovie.backdropPath}',
      fit: BoxFit.cover,
    );
  }

  @override
  void didChangeDependencies() {
    precacheImage(image.image, context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => dependencies<DetailsBloc>()
        ..add(
          DetailsEvent.movieFetched(widget.shortMovie),
        ),
      child: Scaffold(
        backgroundColor: CustomColors.detailsBackground,
        body: BlocBuilder<DetailsBloc, DetailsState>(
          builder: (context, state) {
            return state.map(
              loading: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              success: (state) => DetailsSuccess(
                movie: state.movie,
                image: image,
              ),
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

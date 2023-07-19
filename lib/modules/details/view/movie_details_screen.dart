import 'package:flutter/material.dart';

import '../../../common/view/view_constants.dart';
import '../../../common/view/widgets/movie_card.dart';
import '../../home/model/short_movie.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({
    super.key,
    required this.movie,
  });

  final ShortMovie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.detailsBackground,
      body: CustomScrollView(
        slivers: [
          DetailsAppBar(movie: movie),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  DetailsHeader(movie: movie),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailsHeader extends StatelessWidget {
  const DetailsHeader({
    super.key,
    required this.movie,
  });

  final ShortMovie movie;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //TODO Replace title
              // Text(
              //   movie.title,
              //   style: Theme.of(context).textTheme.titleLarge,
              // ),
              SizedBox(height: 16),
              Text('${movie.releaseDate.year} | DIRECTED BY'),
              SizedBox(height: 8),
              Text(
                'James Gunn',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: MovieCard(
            movie: movie,
          ),
        ),
      ],
    );
  }
}

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({
    super.key,
    required this.movie,
  });

  final ShortMovie movie;

  @override
  Widget build(BuildContext context) {
    final backdropPath = movie.backdropPath;

    return SliverAppBar(
      expandedHeight: 240,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 2.0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            movie.title,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
        background: DecoratedBox(
          position: DecorationPosition.foreground,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: <Color>[
                CustomColors.detailsBackground,
                Colors.transparent,
              ],
            ),
          ),
          child: backdropPath != null
              ? Image.network(
                  '${ViewConstants.backdropBaseURl}$backdropPath',
                  fit: BoxFit.cover,
                )
              : Icon(Icons.image_not_supported),
        ),
        stretchModes: [
          StretchMode.zoomBackground,
          StretchMode.fadeTitle,
        ],
        collapseMode: CollapseMode.parallax,
      ),
    );
  }
}

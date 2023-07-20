import 'package:flutter/material.dart';

import '../../../common/view/widgets/movie_card.dart';
import '../model/movie.dart';

class DetailsHeader extends StatelessWidget {
  const DetailsHeader({
    super.key,
    required this.movie,
  });

  final Movie movie;

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

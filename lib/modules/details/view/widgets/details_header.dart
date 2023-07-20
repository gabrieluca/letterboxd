import 'package:flutter/material.dart';

import '../../../../common/view/custom_colors.dart';
import '../../../../common/view/widgets/movie_poster.dart';
import '../../model/movie.dart';
import 'trailer_chip.dart';

class DetailsHeader extends StatelessWidget {
  const DetailsHeader({
    required this.movie, super.key,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Text(
                '${movie.releaseDate.year} | DIRECTED BY',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: CustomColors.labelColor,
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                'James Gunn', //TODO Get director route
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: CustomColors.titleColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  TrailerChip(onTap: () {
                    //TODO open Youtube link
                  },),
                  const SizedBox(width: 16),
                  Text(
                    '${movie.duration} mins',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: CustomColors.labelColor,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: MoviePoster(
            movie: movie,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../common/view/custom_colors.dart';
import '../../model/movie.dart';

class RatingBlock extends StatelessWidget {
  const RatingBlock({
    required this.movie, super.key,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              'Rating',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: CustomColors.labelColor),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  movie.rating.toStringAsFixed(1),
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: CustomColors.labelColor),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      movie.rating.round(),
                      (index) => const Icon(
                        Icons.star,
                        color: Colors.green,
                        size: 20,
                      ),
                    ),
                    ...List.generate(
                      5 - movie.rating.round(),
                      (index) => const Icon(
                        Icons.star_border,
                        color: CustomColors.accentColor,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

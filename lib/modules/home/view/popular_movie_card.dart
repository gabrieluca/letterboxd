import 'package:flutter/material.dart';

import '../../../common/view/view_constants.dart';
import '../model/popular_movie.dart';

class PopularMovieCard extends StatelessWidget {
  const PopularMovieCard({
    super.key,
    required this.movie,
  });

  final PopularMovie movie;

  @override
  Widget build(BuildContext context) {
    final posterPath = movie.posterPath;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: Colors.white.withOpacity(0.2),
              width: 1,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: posterPath != null && posterPath.isNotEmpty
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          '${ViewConstants.imageBaseUrl}$posterPath',
                          fit: BoxFit.cover,
                        ),
                      )
                    : const Icon(Icons.image_not_supported),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

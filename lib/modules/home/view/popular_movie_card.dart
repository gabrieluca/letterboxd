import 'package:flutter/material.dart';

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
    return Card(
      child: Column(
        children: [
          Expanded(
            child: posterPath != null && posterPath.isNotEmpty
                ? Image.network(
                    posterPath,
                    fit: BoxFit.cover,
                  )
                : const Icon(Icons.image_not_supported),
          ),
        ],
      ),
    );
  }
}

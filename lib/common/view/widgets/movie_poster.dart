import 'package:flutter/material.dart';

import '../../../modules/home/model/short_movie.dart';
import '../view_constants.dart';

class MoviePoster extends StatelessWidget {
  const MoviePoster({
    required this.movie, super.key,
    this.onTap,
  });

  final ShortMovie movie; //TODO Change to Movie
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final posterPath = movie.posterPath;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Material(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: Colors.white.withOpacity(0.2),
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: posterPath != null && posterPath.isNotEmpty
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            '${ViewConstants.posterBaseUrl}$posterPath',
                            fit: BoxFit.cover,
                          ),
                        )
                      : const Icon(Icons.image_not_supported),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

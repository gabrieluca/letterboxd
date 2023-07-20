import 'package:flutter/material.dart';

import '../model/movie.dart';
import 'details_sliver_app_bar.dart';
import 'details_header.dart';

class DetailsContent extends StatelessWidget {
  const DetailsContent({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        DetailsSliverAppBar(movie: movie),
        SliverToBoxAdapter(
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
    );
  }
}

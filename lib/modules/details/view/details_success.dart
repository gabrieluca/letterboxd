import 'package:flutter/material.dart';

import '../model/movie.dart';
import 'widgets/description_block.dart';
import 'widgets/details_sliver_app_bar.dart';
import 'widgets/details_header.dart';
import 'widgets/action_list.dart';
import 'widgets/rating_bloc.dart';

class DetailsSuccess extends StatelessWidget {
  const DetailsSuccess({
    super.key,
    required this.movie,
    required this.image,
  });

  final Movie movie;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        DetailsSliverAppBar(
          movie: movie,
          image: image,
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                DetailsHeader(movie: movie),
                SizedBox(height: 8),
                DescriptionBlock(movie: movie),
                Divider(),
                RatingBlock(movie: movie),
                Divider(),
                ActionList(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

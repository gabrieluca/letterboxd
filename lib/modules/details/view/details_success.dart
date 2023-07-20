import 'package:flutter/material.dart';

import '../model/movie.dart';
import 'widgets/description_block.dart';
import 'widgets/details_sliver_app_bar.dart';
import 'widgets/details_header.dart';
import 'widgets/action_list.dart';
import 'widgets/rating_bloc.dart';
import 'widgets/custom_toggle_buttons.dart';

class DetailsSuccess extends StatefulWidget {
  const DetailsSuccess({
    super.key,
    required this.movie,
    required this.image,
  });

  final Movie movie;
  final Image image;

  @override
  State<DetailsSuccess> createState() => _DetailsSuccessState();
}

class _DetailsSuccessState extends State<DetailsSuccess> {
  List<bool> isSelected = [true, false, false, false];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        DetailsSliverAppBar(
          movie: widget.movie,
          image: widget.image,
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                DetailsHeader(movie: widget.movie),
                SizedBox(height: 8),
                DescriptionBlock(movie: widget.movie),
                Divider(),
                RatingBlock(movie: widget.movie),
                Divider(),
                ActionList(),
                Divider(),
                CustomToggleButtons()
                //TODO Add Cast, Crew, Details and Genres
                // TODO Cast Horizontal List
              ],
            ),
          ),
        ),
      ],
    );
  }
}

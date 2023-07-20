import 'package:flutter/material.dart';

import '../model/movie.dart';
import 'widgets/action_list.dart';
import 'widgets/custom_toggle_buttons.dart';
import 'widgets/description_block.dart';
import 'widgets/details_header.dart';
import 'widgets/details_sliver_app_bar.dart';
import 'widgets/rating_bloc.dart';

class DetailsSuccess extends StatefulWidget {
  const DetailsSuccess({
    required this.movie,
    required this.image,
    super.key,
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
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                DetailsHeader(movie: widget.movie),
                const SizedBox(height: 8),
                DescriptionBlock(movie: widget.movie),
                const Divider(),
                RatingBlock(movie: widget.movie),
                const Divider(),
                const ActionList(),
                const Divider(),
                const CustomToggleButtons()
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/view/custom_colors.dart';
import '../../bloc/details_bloc.dart';
import '../../model/movie.dart';

class DetailsSliverAppBar extends StatelessWidget {
  const DetailsSliverAppBar({
    super.key,
    required this.movie,
    required this.image,
  });

  final Movie movie;
  final Image image;

  @override
  Widget build(BuildContext context) {
    //TODO Implement title on the left and then center it when expanded

    return SliverAppBar(
      expandedHeight: 240,
      pinned: true,
      stretch: true,
      onStretchTrigger: () async {
        context.read<DetailsBloc>().add(DetailsEvent.refreshed(movie));
      },
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 2.0,
        title: Text(
          movie.title,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
          textAlign: TextAlign.center,
        ),
        background: DecoratedBox(
          position: DecorationPosition.foreground,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: <Color>[
                CustomColors.detailsBackground,
                Colors.transparent,
              ],
            ),
          ),
          child: image,
        ),
        stretchModes: [
          StretchMode.zoomBackground,
          StretchMode.fadeTitle,
        ],
        collapseMode: CollapseMode.parallax,
      ),
    );
  }
}

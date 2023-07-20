import 'package:flutter/material.dart';

import '../../../common/view/view_constants.dart';
import '../model/movie.dart';

class DetailsSliverAppBar extends StatelessWidget {
  const DetailsSliverAppBar({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    final backdropPath = movie.backdropPath;

    return SliverAppBar(
      expandedHeight: 240,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 2.0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            movie.title,
            style: Theme.of(context).textTheme.labelLarge,
          ),
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
          child: backdropPath != null
              ? Image.network(
                  '${ViewConstants.backdropBaseURl}$backdropPath',
                  fit: BoxFit.cover,
                )
              : Icon(Icons.image_not_supported),
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

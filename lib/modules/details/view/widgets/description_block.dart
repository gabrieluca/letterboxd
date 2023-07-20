import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

import '../../../../common/view/custom_colors.dart';
import '../../model/movie.dart';

class DescriptionBlock extends StatelessWidget {
  const DescriptionBlock({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                movie.tagLine.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: CustomColors.labelColor),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        //TODO Implement faded expandable text
        ExpandableText(
          movie.overview,
          expandText: 'show more',
          collapseText: 'show less',
          maxLines: 3,
          textAlign: TextAlign.justify,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: CustomColors.labelColor),
          // linkColor: CustomColors.titleColor,
          linkStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: CustomColors.titleColor,
              ),
        ),
      ],
    );
  }
}

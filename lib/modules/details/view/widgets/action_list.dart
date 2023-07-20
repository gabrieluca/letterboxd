import 'package:flutter/material.dart';

import '../../../../common/view/custom_colors.dart';
import 'action_card.dart';

class ActionList extends StatelessWidget {
  const ActionList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: ActionCard(
            color: CustomColors.greenChip,
            icon: Icons.remove_red_eye,
            title: 'Members',
            numbers: '202k',
          ),
        ),
        Expanded(
          child: ActionCard(
            color: CustomColors.greyChip,
            icon: Icons.text_snippet,
            title: 'Reviews',
            numbers: '80k',
          ),
        ),
        Expanded(
          child: ActionCard(
            color: CustomColors.blueChip,
            icon: Icons.my_library_books_outlined,
            title: 'Lists',
            numbers: '67',
          ),
        ),
      ],
    );
  }
}

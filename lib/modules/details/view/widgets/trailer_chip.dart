import 'package:flutter/material.dart';

import '../../../../common/view/custom_colors.dart';

class TrailerChip extends StatelessWidget {
  const TrailerChip({
    required this.onTap, super.key,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Chip(
        backgroundColor: CustomColors.subtitle,
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.play_arrow_rounded,
              color: CustomColors.titleColor,
            ),
            Text(
              'TRAILER',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    letterSpacing: 0.8,
                    color: CustomColors.titleColor,
                  ),
            ),
          ],
        ),
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

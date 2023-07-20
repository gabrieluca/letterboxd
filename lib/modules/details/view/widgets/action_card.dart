import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  const ActionCard({
    required this.color,
    required this.icon,
    required this.title,
    required this.numbers,
    super.key,
  });

  final Color color;
  final IconData icon;
  final String title;
  final String numbers;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      color: color,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 16.0, 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon),
            SizedBox(height: 4),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(numbers),
          ],
        ),
      ),
    );
  }
}


// const _actionData = [

// ]
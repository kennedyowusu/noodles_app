import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';

class RatingWithCounter extends StatelessWidget {
  const RatingWithCounter({
    super.key,
    required this.rating,
    required this.numOfRating,
  });

  final double rating;
  final int numOfRating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          rating.toString(),
          style: Theme.of(context)
              .textTheme
              .labelSmall!
              .copyWith(color: bodyTextColor.withOpacity(0.74)),
        ),
        const SizedBox(width: 8),
        const Icon(Icons.star, size: 8),
        const SizedBox(width: 8),
        Text(
          "$numOfRating+ Ratings",
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: bodyTextColor.withOpacity(0.74),
              ),
        ),
      ],
    );
  }
}

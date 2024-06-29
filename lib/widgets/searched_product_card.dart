import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';
import 'package:gobe_app/widgets/rating_with_counter.dart';
import 'package:gobe_app/widgets/searched_product_image_container.dart';
import 'package:gobe_app/widgets/small_dot.dart';

class SearchedProductCard extends StatelessWidget {
  final String image;
  final String name;
  final double rating;
  final int numOfRating, deliveryTime;
  final bool isFreeDelivery;
  final VoidCallback press;

  const SearchedProductCard({
    super.key,
    required this.name,
    required this.rating,
    required this.numOfRating,
    required this.deliveryTime,
    this.isFreeDelivery = true,
    required this.image,
    required this.press,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchProductImageContainer(image: image),
          const SizedBox(height: defaultPadding / 2),
          Text(name, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: defaultPadding / 4),
          const SizedBox(height: defaultPadding / 4),
          Row(
            children: [
              RatingWithCounter(rating: rating, numOfRating: numOfRating),
              const SizedBox(width: defaultPadding / 2),
              const Icon(Icons.watch),
              const SizedBox(width: 8),
              Text(
                "$deliveryTime Min",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                child: SmallDot(),
              ),
              const Icon(Icons.location_city_sharp),
              const SizedBox(width: 8),
              Text(isFreeDelivery ? "Free" : "Paid",
                  style: Theme.of(context).textTheme.labelSmall),
            ],
          ),
        ],
      ),
    );
  }
}

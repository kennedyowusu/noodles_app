import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';
import 'package:gobe_app/constants/image.dart';
import 'package:gobe_app/widgets/rating_with_counter.dart';
import 'package:gobe_app/widgets/searched_product_image_container.dart';
import 'package:gobe_app/widgets/shimmer/shimmer.dart';
import 'package:gobe_app/widgets/small_dot.dart';

class FeaturedProduct extends StatefulWidget {
  const FeaturedProduct({super.key});

  @override
  _FeaturedProductState createState() => _FeaturedProductState();
}

class _FeaturedProductState extends State<FeaturedProduct> {
  bool isLoading = true;
  int demoDataLength = 4;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: ListView.builder(
          itemCount: isLoading ? 3 : demoDataLength,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: defaultPadding),
            child: isLoading
                ? const SearchSkeleton()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SearchProductImageContainer(image: twelve),
                      const SizedBox(height: defaultPadding / 2),
                      Text("Lasagna",
                          style: Theme.of(context).textTheme.titleLarge),
                      const SizedBox(height: defaultPadding / 4),
                      const SizedBox(height: defaultPadding / 4),
                      Row(
                        children: [
                          const RatingWithCounter(rating: 4.9, numOfRating: 4),
                          const SizedBox(width: defaultPadding / 2),
                          const Icon(Icons.watch, size: 20),
                          const SizedBox(width: 8),
                          Text(
                            "30 Min",
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: defaultPadding / 2),
                            child: SmallDot(),
                          ),
                          const Icon(Icons.location_city_sharp, size: 20),
                          const SizedBox(width: 8),
                          Text("Free",
                              style: Theme.of(context).textTheme.labelSmall),
                        ],
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}

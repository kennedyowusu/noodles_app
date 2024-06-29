import 'package:flutter/material.dart';
import 'package:gobe_app/widgets/searched_product_skeleton.dart';
import 'package:gobe_app/widgets/shimmer/skeleton.dart';

class SearchSkeleton extends StatelessWidget {
  const SearchSkeleton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AspectRatio(
          aspectRatio: 1.81,
          child: SearchProductSkeleton(),
        ),
        const SizedBox(height: 16),
        LineSkeleton(
          width: MediaQuery.of(context).size.width * 0.8,
        ),
        const SizedBox(height: 16),
        const LineSkeleton(),
        const SizedBox(height: 16),
        const LineSkeleton(),
      ],
    );
  }
}

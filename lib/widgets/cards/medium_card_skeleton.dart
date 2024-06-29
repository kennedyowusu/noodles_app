import 'package:flutter/material.dart';
import 'package:gobe_app/widgets/shimmer/scalton_rounded_container.dart';
import 'package:gobe_app/widgets/shimmer/skeleton.dart';

class MediumCardSkeleton extends StatelessWidget {
  const MediumCardSkeleton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.25,
            child: SkeletonRoundedContainer(),
          ),
          SizedBox(height: 16),
          LineSkeleton(width: 150),
          SizedBox(height: 16),
          LineSkeleton(),
          SizedBox(height: 16),
          LineSkeleton(),
        ],
      ),
    );
  }
}

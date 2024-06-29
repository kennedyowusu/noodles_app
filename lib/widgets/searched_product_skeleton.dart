import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';
import 'package:gobe_app/widgets/dot_indicator.dart';

class SearchProductSkeleton extends StatelessWidget {
  const SearchProductSkeleton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.08),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
        ),
        Positioned(
          bottom: defaultPadding,
          right: defaultPadding,
          child: Row(
            children: List.generate(
              1,
              (index) => const DotIndicator(),
            ),
          ),
        ),
      ],
    );
  }
}

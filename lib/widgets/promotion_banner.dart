import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';
import 'package:gobe_app/constants/image.dart';
import 'package:gobe_app/widgets/shimmer/scalton_rounded_container.dart';

class ProjectBanner extends StatefulWidget {
  const ProjectBanner({
    super.key,
  });

  @override
  _ProjectBannerState createState() => _ProjectBannerState();
}

class _ProjectBannerState extends State<ProjectBanner> {
  bool isLoading = true;
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: isLoading
          ? const AspectRatio(
              aspectRatio: 1.97,
              child: SkeletonRoundedContainer(radious: 12),
            )
          : ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: Image.asset(banner),
            ),
    );
  }
}

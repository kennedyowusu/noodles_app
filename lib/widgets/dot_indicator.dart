import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
    this.activeColor = primaryColor,
    this.inactiveColor = const Color(0xFF868686),
  });

  final bool isActive;

  final Color activeColor;

  final Color inactiveColor;

  @override
  Widget build(BuildContext context) {
    const double dotSize = 8.0;
    const double marginValue = defaultPadding / 2;

    return AnimatedContainer(
      duration: kDefaultDuration,
      margin: const EdgeInsets.symmetric(horizontal: marginValue),
      height: dotSize,
      width: dotSize,
      decoration: BoxDecoration(
        color: isActive ? activeColor : inactiveColor.withOpacity(0.25),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

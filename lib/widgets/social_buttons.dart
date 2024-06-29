import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';

class SocialButton extends StatelessWidget {
  final Color color;
  final Widget icon;
  final GestureTapCallback onPress;

  const SocialButton({
    super.key,
    required this.color,
    required this.icon,
    required this.onPress,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(const Radius.circular(50)),
          border: Border.all(width: 1, color: primaryColor),
        ),
        child: icon,
      ),
    );
  }
}

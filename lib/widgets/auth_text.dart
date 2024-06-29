import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';

class AuthText extends StatelessWidget {
  final String title;

  const AuthText({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding),
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
        ),
        const SizedBox(height: defaultPadding),
      ],
    );
  }
}

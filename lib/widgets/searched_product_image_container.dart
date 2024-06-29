import 'package:flutter/material.dart';

class SearchProductImageContainer extends StatelessWidget {
  const SearchProductImageContainer({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      duration: const Duration(milliseconds: 200),
      child: Image.asset(image),
    );
  }
}

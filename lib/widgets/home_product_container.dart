import 'package:flutter/material.dart';

class HomeProductContainer extends StatelessWidget {
  const HomeProductContainer({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(
          width: 1,
          color: Colors.black12,
        ),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gobe_app/widgets/featured_product_body.dart';

class FeaturedScreen extends StatelessWidget {
  const FeaturedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Power Packed"),
      ),
      body: const FeaturedProduct(),
    );
  }
}

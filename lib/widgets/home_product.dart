import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';
import 'package:gobe_app/widgets/dot_indicator.dart';
import 'package:gobe_app/widgets/home_product_container.dart';

class HomeProduct extends StatefulWidget {
  const HomeProduct({
    super.key,
    required this.images,
  });

  final List images;

  @override
  _HomeProductState createState() => _HomeProductState();
}

class _HomeProductState extends State<HomeProduct> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.81,
      child: Stack(
        children: [
          PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            itemCount: widget.images.length,
            itemBuilder: (context, index) => HomeProductContainer(
              image: widget.images[index],
            ),
          ),
          Positioned(
            bottom: defaultPadding,
            right: defaultPadding,
            child: Row(
              children: List.generate(
                widget.images.length,
                (index) => DotIndicator(
                  isActive: currentIndex == index,
                  activeColor: Colors.redAccent,
                  inactiveColor: Colors.grey,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

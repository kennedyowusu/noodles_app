import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      height: 1.0,
      width: MediaQuery.of(context).size.width * .1,
      color: Colors.black,
    );
  }
}

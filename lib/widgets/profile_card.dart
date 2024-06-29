import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    this.title,
    this.subTitle,
    this.press,
  });

  final String? title, subTitle;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      child: InkWell(
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        onTap: press,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 0.2,
                  color: Colors.grey,
                ),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title!,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        subTitle!,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

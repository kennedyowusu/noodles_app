import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';
import 'package:gobe_app/constants/data.dart';
import 'package:gobe_app/widgets/expandable.dart';

class MoreNoodles extends StatefulWidget {
  const MoreNoodles({super.key});

  @override
  _MoreNoodlesState createState() => _MoreNoodlesState();
}

class _MoreNoodlesState extends State<MoreNoodles> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
          moreNoodles.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding,
              vertical: defaultPadding / 2,
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: SizedBox(
                height: 110,
                child: Row(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        child: Image.asset(
                          moreNoodles[index]["image"],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            moreNoodles[index]["title"],
                            maxLines: 1,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontSize: 18),
                          ),
                          ExpandableText(
                            text: moreNoodles[index]["description"],
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              actionText("Take Away"),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: defaultPadding / 2),
                                child: Container(
                                  height: 4,
                                  width: 4,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color!
                                        .withOpacity(0.4),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              actionText("Delivery"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  TextButton actionText(String title) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.all(Colors.transparent),
      ),
      onPressed: () {},
      child: Text(
        title,
        style: const TextStyle(
          color: primaryColor,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

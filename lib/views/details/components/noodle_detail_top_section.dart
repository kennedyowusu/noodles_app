import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';

class NoodleDetailTopSection extends StatelessWidget {
  const NoodleDetailTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const DeliveryInfo(
                iconSrc: Icons.delivery_dining,
                text: "Free",
                subText: "Delivery",
              ),
              const SizedBox(width: defaultPadding),
              const DeliveryInfo(
                iconSrc: Icons.lock_clock,
                text: "15",
                subText: "Minutes",
              ),
              const Spacer(),
              OutlinedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text("Take away"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DeliveryInfo extends StatelessWidget {
  const DeliveryInfo({
    super.key,
    required this.iconSrc,
    required this.text,
    required this.subText,
  });

  final String text, subText;
  final IconData iconSrc;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          iconSrc,
          color: primaryColor,
        ),
        const SizedBox(width: 8),
        Text.rich(
          TextSpan(
            text: "$text\n",
            style: Theme.of(context).textTheme.labelLarge,
            children: [
              TextSpan(
                text: subText,
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(fontWeight: FontWeight.normal),
              )
            ],
          ),
        ),
      ],
    );
  }
}

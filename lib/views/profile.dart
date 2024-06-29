import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';
import 'package:gobe_app/constants/image.dart';
import 'package:gobe_app/widgets/app_bar.dart';
import 'package:gobe_app/widgets/drawer.dart';
import 'package:gobe_app/widgets/profile_card.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context, "Profile"),
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding,
            ),
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: primaryColor.withOpacity(0.5), width: 1),
                        image: const DecorationImage(
                          image: AssetImage(
                            logo,
                          ),
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    "Kobicypher",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  subtitle: Text(
                    "admin",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: primaryColor.withOpacity(0.5),
                        ),
                  ),
                  trailing: Icon(
                    Icons.check_circle_outline,
                    size: 20,
                    color: primaryColor.withOpacity(0.5),
                  ),
                ),
                const SizedBox(height: defaultPadding),
                ProfileCard(
                  title: "Profile Information",
                  subTitle: "Change your account information",
                  press: () {},
                ),
                ProfileCard(
                  title: "Location",
                  subTitle: "Update your Location",
                  press: () {},
                ),
                ProfileCard(
                  title: "Order History",
                  subTitle: "View your order history",
                  press: () {},
                ),
                ProfileCard(
                  title: "Payment History",
                  subTitle: "View your payment history",
                  press: () {},
                ),
                ProfileCard(
                  title: "Add Payment Method",
                  subTitle: "add new payment method",
                  press: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

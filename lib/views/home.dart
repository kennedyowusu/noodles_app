import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';
import 'package:gobe_app/constants/data.dart';
import 'package:gobe_app/widgets/app_bar.dart';
import 'package:gobe_app/widgets/drawer.dart';
import 'package:gobe_app/widgets/home_product.dart';
import 'package:gobe_app/widgets/home_view_title.dart';
import 'package:gobe_app/widgets/cards/home_image_card.dart';
import 'package:gobe_app/widgets/promotion_banner.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context, "Home"),
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: defaultPadding),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: HomeProduct(images: productCardImages),
              ),
              const SizedBox(height: defaultPadding * 2),
              SectionTitle(title: "Hot Noodles", press: () {}),
              const SizedBox(height: defaultPadding),
              const HomeImageCard(),
              const SizedBox(height: 20),
              const ProjectBanner(),
              const SizedBox(height: 20),
              SectionTitle(title: "Power Packed", press: () {}),
              const SizedBox(height: 16),
              const HomeImageCard(),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

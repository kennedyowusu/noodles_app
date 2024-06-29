import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';
import 'package:gobe_app/constants/data.dart';
import 'package:gobe_app/views/details/details_screen.dart';
import 'package:gobe_app/widgets/restaurant_info_medium_card.dart';
import 'package:gobe_app/widgets/cards/medium_card_skeleton.dart';

class HomeImageCard extends StatefulWidget {
  const HomeImageCard({
    super.key,
  });

  @override
  _HomeImageCardState createState() => _HomeImageCardState();
}

class _HomeImageCardState extends State<HomeImageCard> {
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List data = demoMediumCardData..shuffle();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          height: 254,
          child: isLoading
              ? buildFeaturedPartnersLoadingIndicator()
              : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(
                      left: defaultPadding,
                      right: (data.length - 1) == index ? defaultPadding : 0,
                    ),
                    child: RestaurantInfoMediumCard(
                      image: data[index]['image'],
                      name: data[index]['name'],
                      location: data[index]['location'],
                      deliveryTime: 25,
                      rating: 4.6,
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailsView(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
        ),
      ],
    );
  }

  SingleChildScrollView buildFeaturedPartnersLoadingIndicator() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          2,
          (index) => const Padding(
            padding: EdgeInsets.only(left: defaultPadding),
            child: MediumCardSkeleton(),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';
import 'package:gobe_app/constants/data.dart';
import 'package:gobe_app/widgets/app_bar.dart';
import 'package:gobe_app/widgets/search_form.dart';
import 'package:gobe_app/widgets/searched_product_card.dart';
import 'package:gobe_app/widgets/drawer.dart';
import 'package:gobe_app/widgets/shimmer/shimmer.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  void showResult() {
    setState(() {
      _isLoading = true;
    });
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context, "Search"),
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: defaultPadding),
              const SearchForm(),
              const SizedBox(height: defaultPadding),
              Text("Delicious Noodles",
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: defaultPadding),
              Expanded(
                child: ListView.builder(
                  itemCount: _isLoading ? 2 : searchResults.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: defaultPadding),
                    child: _isLoading
                        ? const SearchSkeleton()
                        : SearchedProductCard(
                            image: searchResults[index]['image'],
                            name: searchResults[index]['name'],
                            rating: searchResults[index]['rating'],
                            numOfRating: searchResults[index]['numOfRating'],
                            deliveryTime: searchResults[index]['deliveryTime'],
                            isFreeDelivery: searchResults[index]
                                ['isFreeDelivery'],
                            press: () {},
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

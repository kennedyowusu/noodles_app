import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';
import 'package:gobe_app/views/search.dart';
import 'package:gobe_app/widgets/home_view_title.dart';
import 'components/more_noodles.dart';
import 'components/noodle_detail_top_section.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fettuccine Alfredo",
          style: Theme.of(context).textTheme.headlineMedium,
          maxLines: 1,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SearchView(),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: defaultPadding / 2),
              const NoodleDetailTopSection(),
              const SizedBox(height: defaultPadding),
              SectionTitle(title: "More Delicious Noodles", press: () {}),
              const SizedBox(height: defaultPadding / 2),
              const MoreNoodles(),
            ],
          ),
        ),
      ),
    );
  }
}

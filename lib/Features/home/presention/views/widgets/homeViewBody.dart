import 'package:bookly_app/Core/Utils/Styles.dart';
import 'package:bookly_app/Features/home/presention/views/widgets/BestSellerListView.dart';
import 'package:bookly_app/Features/home/presention/views/widgets/CustomAppBar.dart';
import 'package:bookly_app/Features/home/presention/views/widgets/FeaturedBooksListView.dart';
import 'package:flutter/material.dart';

class Homeviewbody extends StatelessWidget {
  const Homeviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                FeaturedBooksListView(),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 20),
                  child: Text(
                    "Best Seller",
                    style: Styles.textStyle18,
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          sliver: BestSellerListView(),
        )
      ],
    );
  }
}

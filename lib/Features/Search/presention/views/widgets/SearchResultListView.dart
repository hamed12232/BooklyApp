import 'package:bookly_app/Features/home/presention/views/widgets/BestSellerListViewItem.dart';
import 'package:flutter/material.dart';

class Searchresultlistview extends StatelessWidget {
  const Searchresultlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: BestSellerListViewItem(),
        );
      },
    );
  }
}

import 'package:bookly_app/Features/home/presention/views/widgets/CustomAppBar.dart';
import 'package:bookly_app/Features/home/presention/views/widgets/CustomListViewItem.dart';
import 'package:bookly_app/Features/home/presention/views/widgets/FeaturedBooksListView.dart';
import 'package:flutter/material.dart';

class Homeviewbody extends StatelessWidget {
  const Homeviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [const CustomAppBar(), FeaturedBooksListView()],
    );
  }
}

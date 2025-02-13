import 'package:bookly_app/Core/Utils/Styles.dart';
import 'package:bookly_app/Features/Search/presention/views/widgets/CustomSearchTextField.dart';
import 'package:bookly_app/Features/Search/presention/views/widgets/SearchResultListView.dart';
import 'package:bookly_app/Features/home/presention/views/widgets/BestSellerListView.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Customsearchtextfield(),
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Search results",
              style: Styles.textStyle18,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(child: Searchresultlistview())
        ],
      ),
    );
  }
}

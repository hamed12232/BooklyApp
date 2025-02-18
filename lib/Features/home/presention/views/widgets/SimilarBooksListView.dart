import 'package:bookly_app/Features/home/presention/views/widgets/CustomListViewItem.dart';
import 'package:flutter/material.dart';

class Similarbookslistview extends StatelessWidget {
  const Similarbookslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.17,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10, bottom: 0),
            child:
                CustomListViewItem(w: 0.2, imageUrl: "assets/images/test.jpeg"),
          );
        },
      ),
    );
  }
}

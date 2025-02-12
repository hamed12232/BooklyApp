import 'package:bookly_app/Core/Utils/AssetsData.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
   CustomListViewItem( {required this.w,super.key});
   double w;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
              image: AssetImage(AssetsData.testImage), fit: BoxFit.fill)),
    );
  }
}

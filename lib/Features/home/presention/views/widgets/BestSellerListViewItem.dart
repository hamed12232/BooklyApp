import 'package:bookly_app/Core/Utils/AssetsData.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: Row(
        children: [
          Container(
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(AssetsData.testImage), fit: BoxFit.fill)),
          )
        ],
      ),
    );
  }
}

import 'package:bookly_app/Constants.dart';
import 'package:bookly_app/Core/Utils/AssetsData.dart';
import 'package:bookly_app/Core/Utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: Padding(
        padding: const EdgeInsets.only(right: 30.0),
        child: Row(
          children: [
            Container(
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(AssetsData.testImage),
                      fit: BoxFit.fill)),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      "Harry Potter and the Goblet of the Fire",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kFontFamilyStyle),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "J.K. Rowling",
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "19.99\$",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: kIconColor,
                        size: 13,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        "4.8",
                        style: Styles.textStyle16,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "(23342)",
                        style: Styles.textStyle14.copyWith(color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

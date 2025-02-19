import 'package:bookly_app/Constants.dart';
import 'package:bookly_app/Core/Utils/AssetsData.dart';
import 'package:bookly_app/Core/Utils/Styles.dart';
import 'package:bookly_app/Core/Utils/app_router.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presention/views/widgets/CustomImageBook.dart';
import 'package:bookly_app/Features/home/presention/views/widgets/RatingBook.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: bookModel);
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.16,
        child: Row(
          children: [
            Customimagebook(
                imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
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
                      bookModel.volumeInfo.title!,
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
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "Free",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Ratingbook(),
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

import 'package:bookly_app/Core/Utils/Styles.dart';
import 'package:bookly_app/Core/Utils/functions/custom_lanucher.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class Booksbuttonaction extends StatelessWidget {
  const Booksbuttonaction({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.05,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                topLeft: Radius.circular(12),
              ),
            ),
            child: Center(
                child: Text(
              "Free",
              style: Styles.textStyle16
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ))),
        GestureDetector(
          onTap: () {
            launchCustomUrl(context, bookModel.volumeInfo.previewLink);
          },
          child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: Center(
                  child: Text(
                getText(bookModel),
                style: Styles.textStyle14
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ))),
        )
      ],
    );
  }

  String getText(BookModel bookmodel) {
    if (bookmodel.volumeInfo.previewLink == null) {
      return "Not Available";
    } else {
      return "preview";
    }
  }
}

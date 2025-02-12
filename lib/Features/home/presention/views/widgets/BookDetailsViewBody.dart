import 'package:bookly_app/Core/Utils/Styles.dart';
import 'package:bookly_app/Features/home/presention/views/widgets/CustomBookDetailsAppBar.dart';
import 'package:bookly_app/Features/home/presention/views/widgets/CustomListViewItem.dart';
import 'package:bookly_app/Features/home/presention/views/widgets/RatingBook.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookDetailsAppBar(),
        CustomListViewItem(w: 0.5,),
        SizedBox(height: 40,),
        Text("The Jungle Book",style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),),
        SizedBox(height: 6,),
        Opacity(
          opacity: 0.7,
          child: Text("Rudyord Klipling",style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w500
          ),),
        ),
                SizedBox(height: 6,),
        Ratingbook(mainAxisAlignment: MainAxisAlignment.center,)
      ],
    );
  }
}
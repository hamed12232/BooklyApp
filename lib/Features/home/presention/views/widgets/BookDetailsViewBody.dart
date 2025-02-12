import 'package:bookly_app/Features/home/presention/views/widgets/CustomBookDetailsAppBar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookDetailsAppBar()
      ],
    );
  }
}
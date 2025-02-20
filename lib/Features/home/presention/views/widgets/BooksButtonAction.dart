import 'package:bookly_app/Core/Utils/Styles.dart';
import 'package:flutter/material.dart';

class Booksbuttonaction extends StatelessWidget {
  const Booksbuttonaction({super.key});

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
        Container(
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
              "preview",
              style: Styles.textStyle14
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            )))
      ],
    );
  }
}

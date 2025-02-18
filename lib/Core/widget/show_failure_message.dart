import 'package:bookly_app/Core/Utils/Styles.dart';
import 'package:flutter/material.dart';

class ShowFailureMessage extends StatelessWidget {
  const ShowFailureMessage({super.key, this.errMesaage});
  final String? errMesaage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMesaage!,
      style: Styles.textStyle18,
    );
  }
}

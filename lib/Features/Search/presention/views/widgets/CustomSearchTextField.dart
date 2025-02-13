import 'package:bookly_app/Core/Utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Customsearchtextfield extends StatelessWidget {
  const Customsearchtextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search",
          hintStyle: Styles.textStyle20,
          border: CustomOutlinedBorder(),
          enabledBorder: CustomOutlinedBorder(),
          suffixIcon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 22,
          )),
    );
  }

  // ignore: non_constant_identifier_names
  OutlineInputBorder CustomOutlinedBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.white));
  }
}

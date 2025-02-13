import 'package:bookly_app/Features/Search/presention/views/widgets/SearchViewBody.dart';
import 'package:flutter/material.dart';

class Searchview extends StatelessWidget {
  const Searchview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SearchViewBody()),
    );
  }
}

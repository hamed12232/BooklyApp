import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Customimagebook extends StatelessWidget {
  const Customimagebook({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        //  height: MediaQuery.of(context).size.height * 0.3,
        width: 80,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          placeholder: (context, url) => Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ImageHeight extends StatelessWidget {
  const ImageHeight({super.key, required this.height, required this.imgUrl});

  final double height;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgUrl,
      // replace with the actual asset path
      width: double.infinity,
      // set the width again to ensure the desired width
      height: height,
      // set the height again to ensure the desired height
      fit: BoxFit.fitHeight, // adjust the fit as needed
    );
  }
}

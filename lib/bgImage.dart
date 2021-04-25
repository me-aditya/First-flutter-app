import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/2.jpg",
      fit: BoxFit.cover,
      height: 200,
      width: 600,
    );
  }
}

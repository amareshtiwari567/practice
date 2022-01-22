import 'package:flutter/material.dart';

class bgimage extends StatelessWidget {
  const bgimage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      // This is the file name
      "assets/bg.jpeg",
      // this is used for mainatain Picture
      fit: BoxFit.cover,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:practice/page/Home.dart';
import 'package:practice/page/Loginpage.dart';

import 'Mydrawer.dart';

// main function of the program
void main() {
  runApp(MaterialApp(
    title: "Demo",
    // This is calling Home page
    home: Loginpage(),
    // This tells about the Theme of HomePage
    theme: ThemeData(primarySwatch: Colors.deepOrange),
  ));
}

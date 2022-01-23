// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/bgimage.dart';
import 'package:practice/changecardname.dart';
import 'package:practice/page/Home.dart';

import 'Mydrawer.dart';

// main function of the program
void main() {
  runApp(MaterialApp(
    title: "Demo",
    // This is calling Home page
    home: Homepage(),
    // This tells about the Theme of HomePage
    theme: ThemeData(primarySwatch: Colors.deepOrange),
  ));
}

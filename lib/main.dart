import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// main function of the program
void main() {
  runApp(MaterialApp(
    title: "Demo",
    home: Homepage(),
  ));
}

// stateless widgets
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // scaffold used for predefined templets
      // used for Appbar
      appBar: AppBar(
        // This is the Title of the Application which will show the top of the AppBar
        title: const Text("Demo Application"),
        // Title will be situated in the center
        centerTitle: true,
      ),
      // This is the body of the Application
      body: Center(
        //  Body holds the Child in the application bar
        child: Container(
          // these are the attribute of the container like padding,allignment,width,height
          padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          width: 100,
          height: 100,
          // thi
          decoration: BoxDecoration(
            color: Colors.blueAccent,
          ),
          // this is used for  Textare
          child: const Text("Amaresh Tiwari"),
        ),
      ),
    );
  }
}

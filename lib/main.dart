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
    // ignore: dead_code
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
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: 100,
                        height: 109,
                        color: Colors.pink,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: 100,
                        height: 109,
                        color: Colors.yellow,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: 100,
                        height: 109,
                        color: Colors.lightGreen,
                      ),
                    ],
                  )),

              //   Body holds the Child in the application bar
            ))));
  }
}

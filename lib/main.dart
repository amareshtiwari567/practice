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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
              ),
            )),
      ),
      //   //  Body holds the Child in the application bar
      //   child: Container(
      //     // these are the attribute of the container like padding,allignment,width,height
      //     padding: EdgeInsets.all(8),
      //     alignment: Alignment.center,
      //     width: 100,
      //     height: 100,
      //     // Decortion used for decorate the box, we can give the color border radius we can give the shadow
      //     decoration: BoxDecoration(
      //         color: Colors.blueAccent,
      //         borderRadius: BorderRadius.circular(18),
      //         boxShadow: [
      //           BoxShadow(
      //             color: Colors.greenAccent,
      //             // used for blur
      //             blurRadius: 5,
      //             spreadRadius: 5,
      //             offset: Offset(2.0, 4.0),
      //           )
      //         ],
      //         // this uses for gradient(like - Linear gradient)
      //         gradient: LinearGradient(
      //             colors: [Colors.yellowAccent, Colors.pinkAccent])),
      //     // this is used for  TextArea
      //     child: Text(
      //       "Amaresh Tiwari",
      //       // it will do Text center
      //       textAlign: TextAlign.center,
      //       // this gives Text style
      //       style: TextStyle(
      //         color: Colors.black,
      //         // this tells about the font
      //         fontWeight: FontWeight.bold,
      //         // this tells about size of the text
      //         fontSize: 20,
      //       ),
      //     ),
      //   ),
    );
  }
}

import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Screen",
    home: const screen(),
    theme: ThemeData(backgroundColor: Colors.indigo[900]),
  ));
}

class screen extends StatelessWidget {
  const screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Screen"),
      // ),
      backgroundColor: Colors.indigo[900],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: const Text(
                  "Salary Slip Employee",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                      fontSize: 25),
                ),
              ),
              Text(
                "Sign In",
                style: TextStyle(fontStyle: FontStyle.normal),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Mobile Number",
                  fillColor: Colors.white,
                  filled: true, // dont forget this line
                ),
              ),
              const SizedBox(height: 20),
              ButtonTheme(
                buttonColor: Colors.blue,
                minWidth: 500.0,
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {},
                  child: const Text("Sign In"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

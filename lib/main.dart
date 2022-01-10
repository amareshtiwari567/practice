import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Demo",
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo Application"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
            child: Text(
          "Amaresh Tiwari",
        )),
        color: Colors.black26,
      ),
    );
  }
}

// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:practice/Mydrawer.dart';
import 'package:practice/changecardname.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late TextEditingController _nameController = TextEditingController();
  var MyText = "Change Me";
  @override
  void initState() {
    // TODO: implement initState to initialized
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
        backgroundColor: Colors.amber,
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
          // this is used for Card widget to crate the Card widget
          child: Card(
            // This is used  for Column Widget
            child:
                changenamecard(MyText: MyText, nameController: _nameController),
          ),
        ),
        // This is calling of Mydrawer class
        drawer: Mydrawer(),
        // This tells about the Floating action button and their location
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton:
            // This tell about,when pressed the Button What action will perform
            FloatingActionButton(
          onPressed: () {
            // what will be managed
            MyText = _nameController.text;
            // It tells about the State
            setState(() {});
          },
          // This is used for Icon Button ,Which are Located in the Right bottom allingment
          child: Icon(Icons.change_circle),
        ));
  }
}

class TextField extends StatelessWidget {
  const TextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField();
  }
}

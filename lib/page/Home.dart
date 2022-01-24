// ignore: file_names
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:practice/Mydrawer.dart';
import 'package:practice/changecardname.dart';
import 'package:http/http.dart' as http;

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late TextEditingController _nameController = TextEditingController();
  var MyText = "Change Me";
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;
  @override
  void initState() {
    // TODO: implement initState to initialized
    super.initState();
  }

  Future<http.Response> fetchAlbum() {
    return http.get(Uri.parse(url));
    print(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white12,
        appBar: AppBar(
          title: const Text("Demo Application"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: data != null
              ? SingleChildScrollView(child: Card())
              : Center(child: CircularProgressIndicator()),
        ),
        drawer: Mydrawer(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            MyText = _nameController.text;
            setState(() {});
          },
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

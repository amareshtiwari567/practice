import 'package:flutter/material.dart';
import 'package:practice/page/infocard.dart';

void main() {
  runApp(MaterialApp(
    title: "Card",
    home: Cardscreen(),
  ));
}

class Cardscreen extends StatelessWidget {
  const Cardscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Home"),
        //   backgroundColor: Colors.blue,
        //   centerTitle: true,
        // ),

        backgroundColor: Colors.grey,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blue,
                    backgroundImage: AssetImage('images/picture.jpg'),
                  ),
                  Text(
                    "Amaresh Tiwari",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Software Developer",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  infocard(
                      text: "phone", icon: Icons.phone, onPressed: () async {}),
                  infocard(
                      text: "email@gmail.com",
                      icon: Icons.email,
                      onPressed: () async {}),
                  infocard(
                      text: "Company Name",
                      icon: Icons.explore,
                      onPressed: () async {}),
                  infocard(
                      text: "Feedback",
                      icon: Icons.feedback,
                      onPressed: () async {}),
                  infocard(
                      text: "Terms & condition",
                      icon: Icons.ac_unit_rounded,
                      onPressed: () async {}),
                  infocard(
                      text: "Logout",
                      icon: Icons.logout,
                      onPressed: () async {}),
                  Text("Version:1.1.8"),
                ],
              ),
            ),
          ),
        ));
  }
}

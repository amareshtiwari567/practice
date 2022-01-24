import 'package:flutter/material.dart';
import 'package:practice/bgimage.dart';
import 'package:practice/page/Home.dart';

// This tells about the stateful widget
class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

// this is the final variable
final userNameController = TextEditingController();
final passController = TextEditingController();

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    // Scaffold
    return Scaffold(
        // This is the appbar
        appBar: AppBar(
          // Title bar
          title: Text("Login Page"),
        ),
        body: Stack(
          // Its use for cover full body of the page in background
          fit: StackFit.expand,
          children: <Widget>[
            bgimage(),
            Center(
              child: Padding(
                padding: EdgeInsets.all(11.0),
                child: SingleChildScrollView(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Form(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Enter the User Name",
                                      labelText: "UserText"),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: "Enter Password",
                                      labelText: "Password"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.all(18.0),
                          // this is used for Raised button
                          child: RaisedButton(
                            onPressed: () {
                              // its sends to the next page
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Homepage()));
                            },
                            child: Text("SignIn "),
                            color: Colors.blue,
                            textColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

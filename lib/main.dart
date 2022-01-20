import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// main function of the program
void main() {
  runApp(MaterialApp(
    title: "Demo",
    home: Homepage(),
    theme: ThemeData(primarySwatch: Colors.deepOrange),
  ));
}

// stateless widgets
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

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
        child: Card(
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/bg.jpeg",
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  height: 50,
                  child: Text(
                    "Change",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Drawer(
          child: ListView(
            children: <Widget>[
              // DrawerHeader(
              //   child: Text(
              //     "Hi, I am drawer",
              //     style: TextStyle(color: Colors.white),
              //   ),
              //   decoration: BoxDecoration(color: Colors.deepPurple),
              // ),
              UserAccountsDrawerHeader(
                accountName: Text("Amaresh Tiwari"),
                accountEmail: Text("Email@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://image.shutterstock.com/image-photo/portrait-smiling-young-businesswoman-glasses-260nw-292254521.jpg"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "Account",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text("Email"),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "Name",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text("Age"),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Icon(Icons.edit),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
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

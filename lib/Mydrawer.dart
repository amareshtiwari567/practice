import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}

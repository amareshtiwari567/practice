import 'package:flutter/material.dart';

class infocard extends StatelessWidget {
  final String text;
  final IconData icon;
  Function onPressed;

  infocard({required this.text, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListTile(
          leading: Icon(
            icon,
          ),
          title: Text(
            text,
            style: TextStyle(color: Colors.teal, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

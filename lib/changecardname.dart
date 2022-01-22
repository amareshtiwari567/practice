import 'package:flutter/material.dart';
import 'package:practice/bgimage.dart';

class changenamecard extends StatelessWidget {
  const changenamecard({
    Key? key,
    required this.MyText,
    required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String MyText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      // This is the Children Widget
      children: <Widget>[
        // This is used for add image in Application
        bgimage(),
        SizedBox(
          height: 20,
        ),
        // this is used for Text which are shown in  Application
        Text(
          MyText,
          // This give the Text style to the Text
          style: TextStyle(
              // This gives the Text foont size
              fontSize: 35,
              // This gives thne font weight
              fontWeight: FontWeight.bold,
              // this gives the color to the Text
              color: Colors.red),
        ),
        // This gives the Padding to Textformfield
        Padding(
          // This give the padding size
          padding: const EdgeInsets.all(8.0),
          // This create TextFormfield
          child: TextFormField(
            // this maintain to Textfield as controller variabale
            controller: _nameController,
            // we are managing Textformfield by choosing
            keyboardType: TextInputType.text,
            // This maintain the Hidden text
            // obscureText: true,
            // This is used for Decoration
            decoration: InputDecoration(
                // This gives the Border
                border: OutlineInputBorder(
                    // this gives the Border radius
                    borderRadius: BorderRadius.circular(9.0)),
                hintText: "Enter Something Here",
                // this is the lable of the Textform field
                labelText: "Name"),
          ),
        ),
      ],
    );
  }
}

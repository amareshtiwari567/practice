import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  var child;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Order Detail'),
        backgroundColor: Colors.red,
      ),
      body: new SingleChildScrollView(
        // padding: new EdgeInsets.all(18.0),
        // child: new Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Column(
            children: <Widget>[
              SizedBox(
                height: 100,
                width: 1000,
                child: new Card(
                  semanticContainer: true,
                  color: Colors.orange,
                  child: new Container(
                    height: 120,
                    width: 800,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: new Text(
                                'Order  can be tracked by order id 20202020\nTracking link is shared by\nManage who can access '),
                          ),
                          new Text('Manage Who can Access'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              new Card(
                child: new Container(
                  color: Colors.deepOrange,
                  height: 120,
                  width: 800,
                  padding: new EdgeInsets.all(32.0),
                  child: new Column(
                    children: <Widget>[new Text(''), new Text('')],
                  ),
                ),
              ),
              new Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: new Container(
                  color: Colors.deepOrange,
                  height: 120,
                  width: 800,
                  padding: new EdgeInsets.all(32.0),
                  child: new Column(
                    children: <Widget>[
                      new Text(''),
                      new Text(''),
                    ],
                  ),
                ),
              ),
              new Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: new Container(
                  color: Colors.deepOrange,
                  height: 120,
                  width: 800,
                  padding: new EdgeInsets.all(32.0),
                  child: new Row(
                    children: <Widget>[
                      new Text('Shree Mad Bhagwad Gita'),
                      new Text('')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // ),
    );

    // SingleChildScrollView(
    //   child: Center(
    //     child: Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Column(
    //         children: [
    //           Card(
    //             // elevation: 4,
    //             color: Colors.grey,
    //             child: InkWell(
    //               splashColor: Colors.blue,
    //               // onTap: () {
    //               //   debugPrint('Card tapped.');
    //               // },
    //               child: const SizedBox(
    //                 width: 500,
    //                 height: 100,
    //                 child: Padding(
    //                   padding: EdgeInsets.all(8.0),
    //                   child: Text(
    //                     'Order can be tracked by 202020202\nTracking Link is shared via SMS',
    //                     style: TextStyle(
    //                         fontStyle: FontStyle.normal,
    //                         color: Colors.black,
    //                         fontSize: 15),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}

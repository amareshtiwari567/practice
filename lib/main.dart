import 'dart:ui';

import 'package:flutter/material.dart';
import '';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';
  // const title = 'basic list';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: MyApp._title,
      home: MyStatelessWidget(),
    );
  }
}

const List<Tab> tabs = <Tab>[
  Tab(
    text: 'All',
    icon: Icon(
      Icons.account_circle,
      // size: 45,
    ),
  ),
  Tab(
    text: 'Pending',
    icon: Icon(
      Icons.pending,
      // size: 45
    ),
  ),
  Tab(
    text: 'Delivered',
    icon: Icon(
      Icons.delivery_dining_sharp,
      // size: 45
    ),
  ),
  Tab(
    text: 'Cancelled',
    icon: Icon(
      Icons.cancel,

      //  size: 45
    ),
  ),
  Tab(
    text: 'Return',
    icon: Icon(
      Icons.assignment_return,
      // size: 45
    ),
  ),
];

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context)!;
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {}
        });
        return SizedBox(
            child: Scaffold(
                appBar: AppBar(
                  title: Text("Order"),
                  // centerTitle: true,
                  backgroundColor: Colors.deepOrange,
                  bottom: TabBar(
                    indicatorColor: Colors.white,
                    tabs: tabs,
                    // isScrollable: true,
                  ),
                ),
                body: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            // color: Colors.amberAccent,
                            child: Card(
                              // color: Colors.deepOrange,
                              // elevation: 2,
                              child: SizedBox(
                                height: 90,
                                child: ListTile(
                                  trailing: Icon(Icons.hub),
                                  title: Text("Amaresh Tiwari",
                                      style: TextStyle(
                                          color: Colors.black,
                                          backgroundColor: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  leading: CircleAvatar(
                                    maxRadius: 50,
                                    backgroundImage: AssetImage("gita.jpeg"),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: 50,
                        //   children: const <Widget>[
                        //     ListTile(
                        //       leading: CircleAvatar(
                        //         backgroundImage: AssetImage("gita.jpeg"),
                        //       ),
                        //       title: Text(
                        //         "Gita",
                        //         style: TextStyle(fontSize: 20),
                        //       ),
                        //       subtitle: Text(
                        //         "Delivery Expected by 31 March",
                        //         style: TextStyle(fontSize: 20),
                        //       ),
                        //       // selected: true,
                        //     ),
                        //     Padding(
                        //       padding: EdgeInsets.all(0),
                        //       child: ListTile(
                        //         subtitle: Text(
                        //           "Delivery Expected by 31 March",
                        //           style: TextStyle(fontSize: 20),
                        //         ),
                        //         leading: CircleAvatar(
                        //             backgroundImage: AssetImage("gita.jpeg")),
                        //         title: Text(
                        //           "ShreemadBhagwadGita",
                        //           style: TextStyle(fontSize: 20),
                        //         ),
                        //       ),
                        //     ),
                        //     Padding(
                        //       padding: EdgeInsets.all(0),
                        //       child: SizedBox(
                        //         height: 50,
                        //         width: 50,
                        //         // child:
                        //         //  Padding(
                        //         // padding: EdgeInsets.all(8.0),
                        //         child: SizedBox(
                        //           height: 90,
                        //           child: ListTile(
                        //             // contentPadding: EdgeInsets.symmetric(
                        //             //     vertical: 0, horizontal: 18),
                        //             isThreeLine: true,
                        //             // horizontalTitleGap: 10,
                        //             // dense: true,
                        //             // visualDensity: VisualDensity(vertical: 4),
                        //             subtitle: Text(
                        //               "Delivery Expected by 31 March\nDelivered",
                        //               style: TextStyle(fontSize: 20),
                        //             ),

                        //             leading: CircleAvatar(
                        //               backgroundImage: AssetImage("gita.jpeg"),
                        //             ),
                        //             title: Text(
                        //               "Shreemadbhagwadgita",
                        //               style: TextStyle(fontSize: 20),
                        //             ),
                        //             // tileColor: Colors.amberAccent,
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //     // ),
                        //   ],
                        // ),
                        // height: 80,
                        // children: <Widget>[
                        //   TabBarView(
                        //     children: tabs.map((Tab tab) {
                        //       return Center(
                        //         child: Text(
                        //           '${tab.text!} Tab',
                        //           style: Theme.of(context).textTheme.headline5,
                        //         ),
                        //       );
                        //     }).toList(),
                        //   ),
                        // ],
                      ),
                    ],
                  ),
                )));
      }),
    );
  }
}

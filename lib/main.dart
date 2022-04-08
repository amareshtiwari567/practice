import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Order List",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyApp._title,
      home: Scaffold(
        appBar: AppBar(title: const Text("Order List")),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          // ListTile(
          //   leading: FlutterLogo(),
          //   title: Text('One-line with leading widget'),
          // ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                    "Order can be tracked by 0202020\nTracking link is shared via SMS\n\nManage who can access"),
              ),
              height: 120,
              width: 800,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 1),
                    ), // changes position of shadow
                  ],
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      isThreeLine: true,
                      leading: SizedBox(
                          height: 100, child: Image.asset("gita.jpeg")),
                      title: Text(
                        'Shree Mad Bhagwad Gita\n',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Order id is 0012345\nDelivery Expected by 31 of March",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // height: 10,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 1),
                    ), // changes position of shadow
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Stepper(
                  steps: <Step>[
                    Step(
                      title: const Text(
                        'Orderd',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      content: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text('Expected by Wed 30th March')),
                    ),
                    const Step(
                      title: Text(
                        'Shipped',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      content: Text('Expected by Wed 30th March'),
                    ),
                    const Step(
                      title: Text(
                        'Out for Delivery',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      content: Text('Expected by Wed 30th March'),
                    ),
                    const Step(
                      title: Text(
                        'Delivery',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      content: Text('Expected by Wed 30th March'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   "Shipping Detail",
                    //   style: TextStyle(
                    //       color: Colors.black,
                    //       fontSize: 17,
                    //       fontWeight: FontWeight.bold),
                    // ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.home,
                            size: 40,
                          ),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shipping Detail",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Amaresh Tiwari",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                "BBD University Lucknow",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        )),
                      ],
                    )
                  ],
                ),
              ),
              height: 120,
              width: 800,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 1),
                    ), // changes position of shadow
                  ],
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    // Text(
                    //   "Shipping Detail",
                    //   style: TextStyle(
                    //       color: Colors.black,
                    //       fontSize: 17,
                    //       fontWeight: FontWeight.bold),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   // child: Icon(
                        //   //   Icons.home,
                        //   //   size: 40,
                        //   // ),
                        // ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Price Detail     ",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Sub Total                                                                                                 399 ",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                "Discount                                                                                                  0",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                "Delivery Charges                                                                                   Free",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                "Total Amount                                                                                                           399.0",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Column(),
                      ],
                    ),
                  ],
                ),
              ),
              height: 120,
              width: 800,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 1),
                    ), // changes position of shadow
                  ],
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ],
      ),
    ));
  }
}

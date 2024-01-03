// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Todo App",
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        elevation: 5,
      ),
      // body: Column(
      //   children: [
      //     Text("Hello"),
      //     Text("World"),
      //   ],
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          // Horizontally arrange
          Text("Hello"),
          Text("World"),
          Text("Flutter"),
          Image.asset(
            "Asset/img/computer_desktop.jpg",
            width: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("row 1st born"),
              Text("row 1st born"),
              Text("row 1st born"),
              Text("row 1st born"),
              Text("row 1st born"),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("3rd Column"),
              Text("3rd Column"),
              Text("3rd Column"),
              Text("3rd Column"),
            ],
          ),
          RichText(
            text: TextSpan(
              text: 'Hello ',
              style: TextStyle(
                color: Colors.red,
                fontSize: 24,
              ),
              children: [
                TextSpan(
                  text: 'from ',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text: 'flutter',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 28,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'Please accept the ',
              style: TextStyle(color: Colors.blue, fontSize: 18),
              children: [
                TextSpan(
                  text: 'TERM and CONDITION ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(
                  text: 'to use the App.',
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //showAboutDialog(context: context);
              // showModalBottomSheet(
              //     context: context,
              //     builder: (context) {
              //       return AlertDialog(
              //         title: Text("Message"),
              //         content: Text("Hello, welcome to our app"),
              //         actions: [
              //           ElevatedButton(
              //             onPressed: () {},
              //             child: Text('Cancel'),
              //           ),
              //         ],
              //       );
              //     });
              showModalBottomSheet(
                  isDismissible: false,
                  backgroundColor: Colors.green,
                  barrierColor: Colors.blue,
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      //mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Message"),
                        Text("Hello world"),
                      ],
                    );
                  });
            },
            child: Text("Tab Here"),
          ),
        ],
      ),
    );
  }
}

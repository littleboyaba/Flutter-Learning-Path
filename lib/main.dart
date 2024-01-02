// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Todo App",
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 7,
        leading: Icon(
          Icons.home,
          color: Colors.black,
          size: 28,
        ),
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
      ),
      /*
      body: Center(
        child: Text(
          "1. Hello flutter, We are going to flutter course"
          "2. Hello flutter, We are going to flutter course"
          "3. Hello flutter, We are going to flutter course"
          "4. Hello flutter, We are going to flutter course"
          "5. Hello flutter, We are going to flutter course"
          "6. Hello flutter, We are going to flutter course"
          "7. Hello flutter, We are going to flutter course"
          "8. Hello flutter, We are going to flutter course"
          "9. Hello flutter, We are going to flutter course"
          "10. Hello flutter, We are going to flutter course",
          textAlign: TextAlign.center,
          maxLines: 5,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w300,
            decoration: TextDecoration.underline,
            wordSpacing: 5,
            letterSpacing: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
      */
      body: Center(
        // child: Image.network(
        //     "https://images.pexels.com/photos/1714208/pexels-photo-1714208.jpeg?auto=compress&cs=tinysrgb&w=600",
        // ),
        child: Image.asset(
          "Asset/img/computer_desktop.jpg",
          height: 600,
          width: 250,
          fit: BoxFit.scaleDown,
          //color: Colors.red,
          repeat: ImageRepeat.repeat,
        ),
      ),
    );
  }
}

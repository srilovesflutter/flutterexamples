import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double padValue = 0;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container Example"),
        ),
        body: Container(
          margin: EdgeInsets.all(100.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              tileMode: TileMode.clamp,
              stops: [0.3,0.6,0.9],
              colors: [Colors.orange, Colors.red, Colors.blue]
            ),
            shape: BoxShape.rectangle,
          ),
        )
      ),
    );
  }
}
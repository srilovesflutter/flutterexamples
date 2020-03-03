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
            gradient: RadialGradient(
              tileMode: TileMode.clamp,
              radius: 1.0,
              colors: [Colors.orange, Colors.red, Colors.green]
            ),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(
              Radius.circular(25.0)
            )
          ),
        )
      ),
    );
  }
}
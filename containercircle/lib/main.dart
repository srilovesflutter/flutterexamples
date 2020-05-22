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
          title: Text("Container as a Circle"),
        ),
        body: Container(
          margin: EdgeInsets.all(50.0),
          decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.circle
          ),
        )
      ),
    );
  }
}

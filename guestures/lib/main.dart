import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Gestures Demo",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _action = "Waiting for an action";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gestures Demo"),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(50.0),
          ),
          Text(
            "$_action",
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _action = "Tapped";
              });
            },
            onDoubleTap: () {
              setState(() {
                _action = "Double Tapped";
              });
            },
            onLongPress: () {
              setState(() {
                _action = "Log Pressed";
              });
            },
            child: Container(
              height: 40.0,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(vertical: 28.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.lightGreen,
              ),
              child: Text("Do something here"),
            ),
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "This is a Boder with One Side",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.black),
        ),
        padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 100.0),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 16.0, color: Colors.lightBlue.shade600),
            bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
          ),
          color: Colors.white,
        ),
      ),
    );
  }
}

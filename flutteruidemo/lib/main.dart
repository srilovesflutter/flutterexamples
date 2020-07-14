import 'package:flutter/material.dart';
import 'package:flutteruidemo/listviewwithimageproblem.dart';

// Main is the starting point of the program
void main() {
  runApp(MyApp());
}

/// MaterialApp will add material designed to your app.
/// Scaffold will make things much better.

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListViewImageProblem(),
      ),
    );
  }
}

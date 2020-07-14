import 'package:flutter/material.dart';

/// You need to add image to pubspec.yaml file.
// Inorder to run this, call MyImageFromAssets from main.dart file

class MyImageFromAssets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.asset(
          'images/fluttercentral.png',
          width: 500.0,
        ),
      ),
    );
  }
}

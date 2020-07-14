import 'package:flutter/material.dart';

/// Inorder to run this, call MyImageFromNetwork from main.dart file

class MyImageFromNetwork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child:
              Image.network('https://fluttercentral.com/images/favicon.png')),
    );
  }
}

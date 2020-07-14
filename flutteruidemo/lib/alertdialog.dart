import 'package:flutter/material.dart';

// This is called from button

showadialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text('Hello World'),
      );
    },
  );
}

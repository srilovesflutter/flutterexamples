import 'package:flutter/material.dart';

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

import 'package:flutter/material.dart';
import 'package:flutteruidemo/alertdialog.dart';

/// Inorder to run this, call MyButton from main.dart file

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Click here'),
        onPressed: () => showadialog(context),
      ),
    );
  }
}

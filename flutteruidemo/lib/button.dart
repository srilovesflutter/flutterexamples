import 'package:flutter/material.dart';
import 'package:flutteruidemo/alertdialog.dart';

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

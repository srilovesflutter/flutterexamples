import 'package:flutter/material.dart';

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
      body: MyDialogButton(),
    ));
  }
}

class MyDialogButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: RaisedButton(
          onPressed: () => showadialog(context),
          child: Text('Click here to Open a Dialog'),
        ),
      ),
    );
  }
}

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

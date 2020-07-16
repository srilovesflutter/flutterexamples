import 'package:flutter/material.dart';

void main() {
  print(123);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Container(child: MyButton()),
      ),
    ));
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text('Hello from SnackBar')));
      },
      child: Text('Click here'),
    );
  }
}

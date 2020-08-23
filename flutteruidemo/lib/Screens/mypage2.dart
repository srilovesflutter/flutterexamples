import 'package:flutter/material.dart';

class MyPage2 extends StatelessWidget {
  final String page1message;

  const MyPage2(this.page1message, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyPage2'),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            onPressed: () {
              Navigator.pop(context, 'Hello from Page 2');
            },
            child: Text(page1message),
          ),
        ),
      ),
    );
  }
}

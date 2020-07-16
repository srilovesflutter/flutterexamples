import 'package:flutter/material.dart';

class MyPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Page 1'),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => MyPage2()));
            },
            child: Text('Go to New Page'),
          )
        ],
      ),
    ));
  }
}

class MyPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Page 2'),
          RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go back'),
          )
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _showBottomSheetCallback() {
    _scaffoldKey.currentState.showBottomSheet<void>((BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.black)),
          color: Colors.grey
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Text('This is a Material persistent bottom sheet. Drag downwards to dismiss it.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text('Persistent bottom sheet')
        ),
        body: Center(
          child: RaisedButton(
            onPressed: _showBottomSheetCallback,
            child: const Text('Show Persistent Bottom Sheet')
          )
        )
      ),
    );
  }
}

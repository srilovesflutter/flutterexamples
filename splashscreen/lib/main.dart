import 'dart:async';
import 'package:flutter/material.dart';

Future<Widget> fetchStr() async {
  await new Future.delayed(const Duration(seconds: 5), () {});
  return MaterialApp(
    title: 'Splash Screen Example',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text('Splash Screen Example'),
      ),
      body: Center(child: Text("Hello")),
    ),
  );
}

void main() => runApp(MyApp(str: fetchStr()));

class MyApp extends StatelessWidget {
  final Future<Widget> str;

  MyApp({Key key, this.str}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Widget>(
      future: str,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return snapshot.data;
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return FlutterLogo(
          size: 70.0,
        );
      },
    );
  }
}

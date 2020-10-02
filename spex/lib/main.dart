import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<int> _counter;
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  void initState() {
    _counter = _prefs.then((value) => (value.getInt('CounterSP') ?? 0));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
              future: _counter,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return CircularProgressIndicator();
                }
                return Text('Clicked ${snapshot.data} times');
              },
            ),
            RaisedButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                final int counter = (prefs.getInt('CounterSP') ?? 0) + 1;
                setState(() {
                  _counter = prefs
                      .setInt('CounterSP', counter)
                      .then((bool success) => counter);
                });
              },
              child: Text('click here'),
            )
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreferencesPage extends StatefulWidget {
  @override
  _MySharedPreferencesPageState createState() =>
      _MySharedPreferencesPageState();
}

class _MySharedPreferencesPageState extends State<MySharedPreferencesPage> {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future<int> _counter;

  @override
  void initState() {
    _counter = _prefs.then((value) => (value.getInt('CounterSP') ?? 0));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shared Preferences'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            FutureBuilder<int>(
              builder: (context, snapshot) {
                if (snapshot.hasData)
                  return Text('Clicked ${snapshot.data} times');
                if (snapshot.hasError)
                  return Text('Error occured');
                else
                  return CircularProgressIndicator();
              },
              future: _counter,
            ),
            RaisedButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                final int counter = (prefs.getInt('CounterSP') ?? 0) + 1;
                setState(() {
                  _counter = prefs
                      .setInt("CounterSP", counter)
                      .then((bool success) => counter);
                });
              },
              child: Text('Click here'),
            )
          ]),
        ),
      ),
    );
  }
}

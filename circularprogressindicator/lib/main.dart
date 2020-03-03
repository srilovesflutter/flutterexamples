import 'dart:async';
import 'package:flutter/material.dart';

Future<String> fetchStr(int vi) async {
  if (vi >= 1) {
    await new Future.delayed(const Duration(seconds: 1), () {});
    return 'Hello World ' + vi.toString();
  }
  return null;
}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int visible = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loader Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 100.0),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    visible++;
                  });
                },
                child: Text('Click here to Load'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
              ),
              StringWidget(str: fetchStr(visible), vi: visible),
            ],
          ),
        ),
      ),
    );
  }
}

class StringWidget extends StatelessWidget {
  final Future<String> str;
  final int vi;

  const StringWidget({Key key, this.str, this.vi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<String>(
        future: str,
        builder: (context, AsyncSnapshot<String> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Text('Press button to start.');
            case ConnectionState.active:
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.done:
              if (snapshot.hasError)
                return Text('Error: ${snapshot.error}');
              else if (snapshot.hasData)
                return Text('${snapshot.data}');
              else
                return Text('Press button to start.');
          }
          return Text('Press button to start.'); // unreachable
        },
      ),
    );
  }
}
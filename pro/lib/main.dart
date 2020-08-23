import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyProviderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) {
            return CounterModel();
          },
        )
      ],
      child: MyApp(),
    );
  }
}

class CounterModel with ChangeNotifier {
  int counter = 0;

  void increment() {
    counter++;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyApp1(),
        MyApp2(),
        RaisedButton(
          onPressed: () {
            context.read<CounterModel>().increment();
          },
          child: Text('Click here'),
        )
      ],
    );
  }
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Clicked ${context.watch<CounterModel>().counter} times'),
        ],
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Clicked ${context.watch<CounterModel>().counter} times'),
        ],
      ),
    );
  }
}

class MyRootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Welcome to the Click App'), MyProviderApp()],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyRootApp());
}

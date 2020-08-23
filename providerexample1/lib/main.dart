import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyProviderApp());
}

class MyProviderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
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
    print(counter);
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Cliked ${context.watch<CounterModel>().counter} Times'),
              RaisedButton(
                onPressed: () {
                  context.read<CounterModel>().increment();
                },
                child: Text('Click here'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

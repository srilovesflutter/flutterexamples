






import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int _currentstep = 0;

  void _movetonext(){
    setState(() {
      _currentstep++;
    });
  }

  void _movetostart(){
    setState(() {
      _currentstep = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
        onStepContinue: _movetonext,
        onStepCancel: _movetostart,
        currentStep: _currentstep,
        steps: <Step>[
        Step(content: Text('This is Content 1'), title: Text('Title 1')),
        Step(content: Text('This is Content 2'), title: Text('Title 2')),
        Step(content: Text('This is Content 3'), title: Text('Title 3')),
        Step(content: Text('This is Content 4'), title: Text('Title 4')),
      ],)
    );
  }
}
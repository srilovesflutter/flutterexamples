import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyAnimatedContoller(),
        ),
      ),
    );
  }
}

class MyAnimatedContainer extends StatefulWidget {
  final AnimationController contoller;

  const MyAnimatedContainer({Key key, this.contoller}) : super(key: key);

  @override
  _MyAnimatedContainerState createState() =>
      _MyAnimatedContainerState(contoller);
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  int counter = 0;
  final AnimationController _controller;

  _MyAnimatedContainerState(this._controller);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(48.0),
          child: MyAnimatedWidget(
            controller: _controller,
            counter: counter,
          ),
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: Text('Click here '),
        ),
      ],
    );
  }
}

class MyAnimatedWidget extends AnimatedWidget {
  final AnimationController controller;
  final int counter;

  const MyAnimatedWidget({Key key, this.controller, this.counter})
      : super(key: key, listenable: controller);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: controller.value * 2.0 * math.pi,
      child: Container(
        child: Text(
          'Clicked $counter times',
        ),
      ),
    );
  }
}

class MyAnimatedContoller extends StatefulWidget {
  @override
  _MyAnimatedContollerState createState() => _MyAnimatedContollerState();
}

class _MyAnimatedContollerState extends State<MyAnimatedContoller>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this)
          ..repeat();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyAnimatedContainer(contoller: _controller);
  }
}

import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(body: Center(child: MyAnimatedController())));
  }
}

class MyAnimatedContainer extends StatefulWidget {
  final counter;
  final AnimationController controller;

  const MyAnimatedContainer({Key key, this.counter = 0, this.controller})
      : super(key: key);

  @override
  _MyAnimatedContainerState createState() =>
      _MyAnimatedContainerState(counter, controller);
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  int counter = 0;
  AnimationController controller;

  _MyAnimatedContainerState(this.counter, this.controller);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedBuilder(
          animation: controller,
          builder: (BuildContext context, Widget child) {
            return Transform.rotate(
              angle: controller.value * 2.0 * math.pi,
              child: Text(
                'Clicked $counter times',
              ),
            );
          },
        ),
        MyAnimatedWidget(
          counter: counter,
          controller: controller,
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: Text('Click here'),
        )
      ],
    );
  }
}

class MyAnimatedWidget extends AnimatedWidget {
  final int counter;
  final AnimationController controller;

  const MyAnimatedWidget({Key key, this.counter, this.controller})
      : super(key: key, listenable: controller);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: controller.value * 2.0 * math.pi,
      child: Text(
        'Clicked $counter times',
      ),
    );
  }
}

class MyAnimatedController extends StatefulWidget {
  @override
  _MyAnimatedControllerState createState() => _MyAnimatedControllerState();
}

class _MyAnimatedControllerState extends State<MyAnimatedController>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this)
          ..repeat();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyAnimatedContainer(
      controller: _controller,
    );
  }
}

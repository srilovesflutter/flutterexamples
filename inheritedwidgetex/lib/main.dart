import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Model extends InheritedWidget {
  final String title;

  Model({this.title = 'Hello from InheritedWidget 123', Key key, Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static Model of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Model>();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Model(child: MaterialApp(home: MyPageLevel1()));
  }
}

class MyPageLevel1 extends StatefulWidget {
  @override
  _MyPageLevel1State createState() => _MyPageLevel1State();
}

class _MyPageLevel1State extends State<MyPageLevel1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Container(child: MyPageLevel2())));
  }
}

class MyPageLevel2 extends StatefulWidget {
  @override
  _MyPageLevel2State createState() => _MyPageLevel2State();
}

class _MyPageLevel2State extends State<MyPageLevel2> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      child: MyPageLevel3(),
    );
  }
}

class MyPageLevel3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //String str = context.dependOnInheritedWidgetOfExactType<Model>().title;
    String str = Model.of(context).title;
    return Text(str);
  }
}

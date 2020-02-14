import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter PageView Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter PageView Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final controller = PageController(
    initialPage: 1,
  );

  @override
  Widget build(BuildContext context) {
      
    TextStyle textStyle = TextStyle(
      color: Colors.blue,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 30,
      height: 2,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
            child: PageView(
      controller: controller,
      children: <Widget>[
        Center(child: Text("Hello1", style: textStyle,)),
        Center(child: Text("Hello2", style: textStyle,)),
        Center(child: Text("Hello3", style: textStyle,)),
        Center(child: Text("Hello4", style: textStyle,)),
      ],
    ),
      ),
    );
  }
}

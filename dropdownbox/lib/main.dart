import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drop down Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Drop Down Box Demo'),
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
  String _dropDownButtonValue =
      'No Value Chosen'; //initial value that is displayed before any option is chosen from drop down

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), actions: <Widget>[]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _dropDownButtonValue,
            ),
            SizedBox(
              height: 50,
            ),
            DropdownButton(
              focusColor: Colors.blue,
              hint: Text('Drop Down Button'), //the text which is shown on the button (optional)
              elevation: 3,
              items: <String>['Dart', 'Python', 'Javascript', 'C++']
                  .map((String val) => DropdownMenuItem<String>(
                        value: val,
                        child: Text(val),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _dropDownButtonValue = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

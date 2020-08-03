import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyHomePage()));
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MyHomePage'),
        ),
        body: Center(
            child: Container(
          child: RaisedButton(
            onPressed: () async {
              //Navigator.push(context, MaterialPageRoute(builder: (context) => MySecondScreen() ,))
              String msg = await Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return MySecondScreen(
                    text: 'Message from FirstScreen',
                  );
                },
              ));
              print(msg);
            },
            child: Text('Click here'),
          ),
        )));
  }
}

class MySecondScreen extends StatelessWidget {
  final String text;

  const MySecondScreen({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MySecondPage'),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            onPressed: () {
              Navigator.pop(
                  context, 'Message from SecondScreen back to FirstScreen');
            },
            child: Text(text),
          ),
        ),
      ),
    );
  }
}

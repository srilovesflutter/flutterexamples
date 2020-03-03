import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:ModalBottomSheetDemo()));
}

class ModalBottomSheetDemo extends StatefulWidget {
  @override
  _ModalBottomSheetDemoState createState() => _ModalBottomSheetDemoState();
}

class _ModalBottomSheetDemoState extends State<ModalBottomSheetDemo> {
  int _index = 0;
  void _showModalSheet(int i) {
    showModalBottomSheet(context: context, builder: (builder) {
      return Container(
        child: Text('You have opened this Modal $i times..'),
        padding: EdgeInsets.all(40.0),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modal bottom sheet')
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            setState(() {
              _index = _index+1;
              _showModalSheet(_index);
            });
          },
          child: const Text('Show Modal Bottom Sheet')
        )
      )
    );
  }
}
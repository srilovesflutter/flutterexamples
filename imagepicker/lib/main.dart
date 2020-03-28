import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Picker Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Image Picker Demo'),
      debugShowCheckedModeBanner: false,
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
  File imageFile;

  _loadImage() async {
    File file = await FilePicker.getFile();
    setState(() {
      imageFile = file;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 250,
                width: 320,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                  ),
                ),
                margin: EdgeInsets.all(16.0),
                child: imageFile == null
                    ? Center(
                        child: Text(
                          'Click the Floating Action Button to Add Image',
                          textAlign: TextAlign.center,
                        ),
                      )
                    : Image.file(
                        imageFile,
                        fit: BoxFit.contain,
                      ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadImage,
        tooltip: 'Load Image',
        child: Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  double padValue = 0;

  List<Paint> paints = <Paint>[
    Paint(1, 'Red', Colors.red),
    Paint(2, 'Blue', Colors.blue),
    Paint(3, 'Green', Colors.green),
    Paint(4, 'Lime', Colors.lime),
    Paint(5, 'Indigo', Colors.indigo),
    Paint(6, 'Yellow', Colors.yellow)
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ReorderableListView Example"),
        ),
        body: ReorderableListView(
          children: List.generate(paints.length, (index) {
            return ListTile(
              key: ValueKey("value$index"),
              leading: Container(
                width: 100.0,
                height: 100.0,
                color: paints[index].colorpicture,
              ),
              title: Text('ID: ' + paints[index].id.toString()),
              subtitle: Text(paints[index].title),              
            );
          }),
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              _updateMyItems(oldIndex, newIndex);
            });
          },
        ),
      ),
    );
  }

  void _updateMyItems(int oldIndex, int newIndex) {
      if(newIndex > oldIndex){
        newIndex -= 1;
      }

      final Paint item = paints.removeAt(oldIndex);
      paints.insert(newIndex, item);

  }
}

class Paint {
  final int id;
  final String title;
  final Color colorpicture;

  Paint(this.id, this.title, this.colorpicture);
}


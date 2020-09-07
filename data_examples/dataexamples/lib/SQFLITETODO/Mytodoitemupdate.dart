import 'package:dataexamples/SQFLITETODO/Mysqlfliteoperations.dart';
import 'package:flutter/material.dart';

class MyToDoItemUpdate extends StatelessWidget {
  final ToDo todoitem;
  final textcontrollerforId = TextEditingController();
  final textcontrollerfordescription = TextEditingController();
  final textcontrollerfordate = TextEditingController();

  MyToDoItemUpdate({Key key, this.todoitem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    textcontrollerforId.text = todoitem.id.toString();
    textcontrollerfordescription.text = todoitem.description;
    textcontrollerfordate.text = todoitem.date;
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              controller: textcontrollerforId,
              decoration: InputDecoration(labelText: 'ID'),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              controller: textcontrollerfordescription,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              controller: textcontrollerfordate,
              decoration: InputDecoration(labelText: 'Date'),
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              onPressed: () {
                ToDo todo = ToDo(
                    id: int.parse(textcontrollerforId.text.toString()),
                    description: textcontrollerfordescription.text,
                    date: textcontrollerfordate.text);
                updatetodoitem(todo);
              },
              child: Text('Save'),
            )
          ],
        ),
      ),
    );
  }
}

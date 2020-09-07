import 'package:dataexamples/SQFLITETODO/Mysqlfliteoperations.dart';
import 'package:flutter/material.dart';

class NewToDoItem extends StatelessWidget {
  final textcontrollerforId = TextEditingController();
  final textcontrollerfordescription = TextEditingController();
  final textcontrollerfordate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('What do you want to do?'),
        ),
        body: SingleChildScrollView(
          child: Padding(
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
                    savetodoitem(todo);
                  },
                  child: Text('Save'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

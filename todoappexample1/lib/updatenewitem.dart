import 'package:flutter/material.dart';
import 'package:todoappexample1/sqfliteoperations.dart';
import 'package:todoappexample1/todo.dart';

class UpdateNewItem extends StatefulWidget {
  final todoitemdescription;

  const UpdateNewItem({Key key, this.todoitemdescription}) : super(key: key);

  @override
  _UpdateNewItemState createState() => _UpdateNewItemState(todoitemdescription);
}

class _UpdateNewItemState extends State<UpdateNewItem> {
  final todoitemtext = TextEditingController();
  final todoitemdescription;

  _UpdateNewItemState(this.todoitemdescription);

  @override
  void initState() {
    todoitemtext.text = todoitemdescription;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: todoitemtext,
            ),
            RaisedButton(
              onPressed: () {
                //Add to Database
                print("New Description: " +
                    todoitemtext.text +
                    " | Old Description: " +
                    todoitemdescription);
                ToDo todo = ToDo(description: todoitemtext.text.toString());
                updatetodoitem(todo, todoitemdescription);
              },
              child: Text('Save'),
            )
          ],
        ),
      ),
    );
  }
}

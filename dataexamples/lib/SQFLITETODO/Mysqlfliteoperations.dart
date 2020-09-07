import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

opendatabase() async {
  final database = openDatabase(
    join(await getDatabasesPath(), 'todoitemsdb.db'),
    version: 1,
    onCreate: (db, version) {
      return db.execute(
          "Create table todoitems(id INTEGER PRIMARY KEY, description TEXT, date TEXT)");
    },
  );

  //print(await File(join(await getDatabasesPath(), 'todoitemsdb.db')).exists());

  return database;
}

Future<List<ToDo>> gettodoitemslist() async {
  final db = await opendatabase();
  List<Map<String, dynamic>> todolistmap = await db.query('todoitems');

  // ToDo item = ToDo(3, 'Can do anything', '05/09/2020');

  // var toDoMap = item.mapToDo();

  // await db.insert('todoitems', toDoMap);
  //print(await db.query('todoitems'));

  List<ToDo> todolist = List.generate(
      todolistmap.length,
      (index) => ToDo(
          id: todolistmap[index]['id'],
          description: todolistmap[index]['description'],
          date: todolistmap[index]['date']));

  return todolist;
}

savetodoitem(ToDo todo) async {
  final db = await opendatabase();
  db.insert('todoitems', todo.mapToDo());
}

deletetodoitem(int id) async {
  final db = await opendatabase();
  await db.delete('todoitems', where: "id = ?", whereArgs: [id]);
}

updatetodoitem(ToDo todo) async {
  final db = await opendatabase();
  await db.update('todoitems', todo.mapToDo(),
      where: "id = ?", whereArgs: [todo.id]);
}

class ToDo {
  final int id;
  final String description;
  final String date;

  ToDo({this.id, this.description, this.date});

  Map<String, dynamic> mapToDo() {
    return {'id': id, 'description': description, 'date': date};
  }
}

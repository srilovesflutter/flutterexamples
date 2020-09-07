import 'package:dataexamples/SQFLITE/Counter.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
// import 'dart:io';

Future<Database> opendatabase() async {
  final database =
      openDatabase(join(await getDatabasesPath(), 'counterTrackerbbb.db'),
          onCreate: (db, version) {
    return db.execute("CREATE TABLE counterTracker(num INTEGER)");
  }, version: 1);

  return database;
}

// databaseexists() async {
//   print(await File(join(await getDatabasesPath(), 'counterTrackerbbb.db'))
//       .exists());
// }

inserttocounterTracker(Counter counter) async {
  final Database db = await opendatabase();
  await db.insert('counterTracker', counter.toMap());
}

dropdatabase() async {
  final Database db = await opendatabase();
  db.delete('counterTracker');
}

Future<List<Map<String, dynamic>>> counterList() async {
  final Database db = await opendatabase();
  final counters = await db.query('counterTracker');
  return counters;
}

import 'package:sqflite/sqflite.dart';

class SqlliteDatabase {
  Database? db;
  init() async {
    db = await openDatabase('birth_registration.db');
  }

  close() {
    if (db != null) db!.close();
  }
}

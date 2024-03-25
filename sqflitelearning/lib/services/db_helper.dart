import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  // variables
  static const dbName = "myDatabase.db"; //creating Database file name
  static const dbVersion = 1;
  static const dbTable = "myTable"; //creating Table
  static const columnId = 'id';
  static const columnName = 'name';

  // creaing Constructor of database class
  static final DatabaseHelper instance = DatabaseHelper();

  //database initialized
  static Database _database;

  // initializing object _database
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await initDB();
    return _database;
  }

  // inittializing databases
  initDB() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(
        directory.path, dbName); //join method is used to add path and file name
    return await openDatabase(path, version: dbVersion, onCreate: onCreate);
  }

  Future onCreate(Database db, int version) async {
    db.execute('''
    CREATE TABLE $dbTable(
      $columnId INTEGER PRIMARY KEY,
      $columnName TEXT NOT NULL,
      
    )
''');
  }
}

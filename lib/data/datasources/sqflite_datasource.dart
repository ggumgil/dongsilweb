import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

class DataSource {
  static final DataSource _instance = DataSource._internal();

  factory DataSource.getDataSource() {
    return _instance;
  }

  DataSource._internal();

  static Database? _db;
  Future<Database> get db async => _db ??= await initDB();

  initDB() async {
    String path = join(await getDatabasesPath(), 'database.db');

    _db = await openDatabase(path, version: 1, onCreate: createDB);

    return _db;
  }

  createDB(Database db, int version) async {
    await db.execute("CREATE TABLE user_info(id INTEGER PRIMARY KEY, name TEXT, socialType TEXT, email TEXT, nickName TEXT,"
        "profileImage TEXT, lastLoginDate INTEGER, birthday INTEGER, "
        "pushYn TEXT, createDate INTEGER, modifyDate INTEGER )");
    await db.execute("CREATE TABLE blog(id INTEGER PRIMARY KEY, contentType TEXT, title TEXT, "
        "content TEXT, tags TEXT, createDate INTEGER, modifyDate INTEGER)");
  }

  Future close() async {
    var dbClient = _db;
    return dbClient?.close();
  }
}

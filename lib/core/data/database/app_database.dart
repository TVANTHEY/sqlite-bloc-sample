import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class AppDatabase {
  AppDatabase._(); //create private construct to avoid create instance from the class
  static final AppDatabase instance = AppDatabase._();

  static Database? _database;

  Future<Database> get db async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String p = "";
    if (Platform.isIOS) {
      p = "/Users/annyon/Documents";
    } else {
      p = directory.path;
    }
    String path = "$p/countstock.db";
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) => _createTables(db),
      onUpgrade: (db, oldVersion, newVersion) async {
        var batch = db.batch();
        if (oldVersion == 1) {
          _updateTableCompanyV1toV2(batch);
        }
        await batch.commit();
      },
    );
  }

  _createTables(Database db) async {
    var batch = db.batch();

    batch.execute('''
    CREATE TABLE product (id INTEGER PRIMARY KEY, name TEXT)
''');

    await batch.commit();
  }

  void _updateTableCompanyV1toV2(Batch batch) {}
}

import 'dart:io';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

final String tableName = 'pdf_table';
final String column_id = 'pdf_id';
final String column_bookname = 'pdf_bookname';
final String column_filename = 'pdf_filename';
final String column_keyword = 'pdf_keyword';
final String colunm_path = 'path';

class Tast {
  final int id;
  final String bookname;
  final String filename;
  final String pdfkeyword;
  final String path;

  Tast({this.id, this.bookname, this.filename, this.pdfkeyword, this.path});

  Map<String, dynamic> toMap() => {
        'id': id,
        'bookname': bookname,
        'filename': filename,
        'pdfkeyword': pdfkeyword,
        'path': path,
      };
}

class TestHelper {
  TestHelper._();
  static final TestHelper dbHelper = TestHelper._();
  Future<Database> _database;

  Future<Database> get database async {
    if (database != null) return _database;
    _database = initDatabase();
    return _database;
  }

  Database db;

  Future<void> initDatabase() async {
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, "dica.db");

    var exists = await databaseExists(path);

    if (!exists) {
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {
        print(_);
      }
      ByteData data = await rootBundle.load(join("assets/db", "dica.db"));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes, flush: true);
    } else {
      print("Opening existing database");
    }

    db = await openDatabase(path, readOnly: false);

    return db;

    // db = await openDatabase(join(await getDatabasesPath(), 'my_database'),
    //     onCreate: (db, version) {
    //   return db.execute(
    //       'CREATE TABLE $tableName($column_id AUTO INCREMENT PRIMARY KEY,$column_name TEXT)');
    // }, version: 1);
  }

  // Future<Tast>
  insertTest(Tast test) async {
    print("db in insert $db");
    try {
      // await db.insert(tableName, test.toMap(),
      await db.rawInsert(
          "INSERT Into $tableName ($column_id,$column_bookname,$column_filename,$column_keyword,$colunm_path)"
          " VALUES (?,?,?,?,?)",
          [test.id, test.bookname, test.filename, test.pdfkeyword, test.path]);

      // return test;
    } catch (e) {
      print(e);
      // return null;
    }
  }

  deleteTest(Tast tast) async {
    // Get a reference to the database.
    final db = await database;

    // Remove the Dog from the database.
    await db.delete(
      'pdf_id',
      // Use a `where` clause to delete a specific dog.
      where: "id = ?",
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [column_id,column_bookname,column_filename,column_keyword,colunm_path]
    );
  }

  Future<List<Tast>> getAllTest() async {
    final List<Map<String, dynamic>> tesks = await db.query(tableName);
    return List.generate(tesks.length, (i) {
      return Tast(
        id: tesks[i][column_id],
        bookname: tesks[i][column_bookname],
        filename: tesks[i][column_filename],
        pdfkeyword: tesks[i][column_keyword],
        path: tesks[i][colunm_path],
      );
    });
  }
}

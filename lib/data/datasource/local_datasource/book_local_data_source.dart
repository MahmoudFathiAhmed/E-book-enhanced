import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

//read data 4:57 3-how to
//read data in page 4:57 6-create
class FavouritesDb {
  static Database? _database;

  Future<Database?> get database async {
    if (_database == null) {
      _database = await initialDb();
      return _database;
    } else {
      return _database;
    }
  }

  initialDb() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'favouritesBooks.db');
    Database database = await openDatabase(path,
        version: 1, onCreate: onCreate, onUpgrade: onUpgrade);

    return database;
  }

  Future<void> onCreate(Database database, int version) async {
    Batch batch = database.batch();
    batch.execute('''
         
          CREATE TABLE IF NOT EXISTS favourites(
            "id" INTEGER PRIMARY KEY  NOT NULL, 
            "title" TEXT,
            "author" TEXT,
            "downloadCount" INTEGER,
            "imageUrl" TEXT 
            )
        ''');

    debugPrint('database sqldb created');

    await batch.commit();
  }

  onUpgrade(Database? db, int oldVersion, int newVersion) async {
    debugPrint('onUpgrade');
  }

  // readData(String sql) async {
  //   final Database? db = await database;
  //   List<Map<String, Object?>> response = await db!.rawQuery(sql);
  //   return response;
  // }

read(String table) async {
    final Database? db = await database;
    List<Map<String, Object?>> response = await db!.query(table);
    return response;
  }
/*
FavouritesDb favouritesDp = FavouritesDp();
List favourites = [];

Future readData() async {
    List<Map> response = await favouritesDb.read("favourites");
    favourites.addAll(response);
    if (mounted) {
      setState(() {});
  }
}
 */

  // insertData(String sql) async {
  //   final Database? db = await database;
  //   int response = await db!.rawInsert(sql);
  //   return response;
  // }

  insert(String table, Map<String, Object?> values) async {
    final Database? db = await database;
    int response = await db!.insert(table, values,conflictAlgorithm: ConflictAlgorithm.replace);
    return response;
  }

  /*
  int response = await favouritesDp.insert("favourites",
  {
   "title" : "${title.text}",
   "author" : "${author.text}",
   "downloadCount" : "${downloadCount.text}",
   "imageUrl" : "${imageUrl.text}",
  }
  );
   */

  // updateData(String sql) async {
  //   final Database? db = await database;
  //   int response = await db!.rawUpdate(sql);
  //   return response;
  // }

  update(String table, Map<String, Object?> values, String? myWhere) async {
    final Database? db = await database;
    int response = await db!.update(table, values, where: myWhere,);
    return response;
  }
  /*
  int response = await favouritesDp.update("favourites",
  {
   "title" : "${title.text}",
   "author" : "${author.text}",
   "downloadCount" : "${downloadCount.text}",
   "imageUrl" : "${imageUrl.text}",
  },
  "id": ${widget.id}
  );
   */

  // deleteData(String sql) async {
  //   final Database? db = await database;
  //   int response = await db!.rawDelete(sql);
  //   return response;
  // }

  delete(String table, String? myWhere) async {
    final Database? db = await database;
    int response = await db!.delete(table, where: myWhere);
    return response;
  }
  /*
  int response = await favouritesDp.delete("favourites",
  "id": ${widget.id}
  );
  if(response > 0){
    favourites.removeWhere((element)=>element['id'] == favourites['id']);
    setState((){});
  }

   */

  static deleteAllDatabase() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'favouritesBooks.db');
    await deleteDatabase(path);
    debugPrint("database is deleted");
  }
}

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class sqldb {

  static Database? _db ;
  Future get db async{
    if(_db == null){
      _db = await intialdb();
      return _db;
    }else{
      return _db;
    }
  }
  Future<Database> intialdb()async{
    String databasepath = await getDatabasesPath();
    String path = join(databasepath,'learrrn.db');
    Database mydb = await openDatabase(path , onCreate: _oncreate , version: 2);
    return mydb;
  }
  _oncreate(Database db , int version)async{
    await db.execute(''' CREATE TABLE "users" (
	"name"	TEXT NOT NULL,
	"email"	TEXT NOT NULL,
	"password"	TEXT NOT NULL
);
    ''');

    print('creatdatabase===============================================');
  }
  Future<List<Map>> readData(String sql) async{
    Database? mydb = await db ;
    List<Map> response = await mydb!.rawQuery(sql);
    return response ;
  }
  Future<int> insertData(String sql) async{
    Database? mydb = await db ;
    int response = await mydb!.rawInsert(sql);
    return response ;
  }
  Future<int> updataData(String sql) async{
    Database? mydb = await db ;
    int response = await mydb!.rawUpdate(sql);
    return response ;
  }
  Future<int>dleteData(String sql) async{
    Database? mydb = await db ;
    int response = await mydb!.rawDelete(sql);
    return response ;
  }


}
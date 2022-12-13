import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:withsqlite/common/data_base_request.dart';

import '../../data/model/role.dart';
import '../../domain/entity/role_entity.dart';

class DataBaseHelper {
  static final DataBaseHelper instance = DataBaseHelper._instence();
  DataBaseHelper._instence();

  final int _version = 1;
  late final String _pathDB;
  late final Directory _appDocumentDirectory;
  late final Database dataBase;

  Future<void> init() async {
    _appDocumentDirectory =
        await path_provider.getApplicationDocumentsDirectory();
    _pathDB = join(_appDocumentDirectory.path, 'test.db');

    if (Platform.isWindows || Platform.isLinux || Platform.isIOS) {
      sqfliteFfiInit();
      dataBase = await databaseFactoryFfi.openDatabase(_pathDB,
          options: OpenDatabaseOptions(
            version: _version,
            onCreate: (db, version) => onCreateTable(db),
            onUpgrade: (db, oldVersion, newVersion) => onUpdateTable(db),
          ));
    } else {
      dataBase = await openDatabase(
        _pathDB,
        version: _version,
        onCreate: (db, version) => onCreateTable(db),
        onUpgrade: ((db, oldVersion, newVersion) => onUpdateTable(db)),
      );
    }
  }

  Future<void> onCreateTable(Database db) async {
    for (var tableCreate in DataBaseRequest.tableCreateList) {
      await db.execute(tableCreate);
    }
  }

  Future<void> onDropDatabase() async {
    dataBase.close();
    deleteDatabase(_pathDB);
  }

  Future<void> onInitTable(Database db) async {
    try {
      for (var element in RoleEnum.values) {
        db.insert(DataBaseRequest.tableRole, Role(name: element.name).toMap());
      }
    } on DatabaseException catch (error) {}
  }

  Future<void> onUpdateTable(Database db) async {
    var tables = await db.rawQuery('SELECT name FROM sqlite_master');
    for (var table in DataBaseRequest.tableList.reversed) {
      if (tables.where((element) => element['name'] == table).isNotEmpty) {
        await db.execute(DataBaseRequest.deleteTable(table));
      }
    }

    for (var element in DataBaseRequest.tableCreateList) {
      await db.execute(element);
    }

    await onCreateTable(db);
  }
}

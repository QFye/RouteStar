import 'package:sqflite/sqflite.dart';

class SqlManager {
  // 版本号
  static const _VERSION = 1;

  // 数据库文件名
  static const DB_NAME = "root.db";

  // 数据库对象
  static Database? _database;

  // 初始化数据库
  static void InitDatabase() async {
    String dbPath = await getDatabasesPath() + "/$DB_NAME";
  }
}

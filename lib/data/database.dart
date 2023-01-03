import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' show join;
import 'package:teste2/data/task_dao.dart';

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), 'task');
  return openDatabase(path, onCreate: (db, version) {
    db.execute(TaskDao.tableSql);
  }, version: 1);
}

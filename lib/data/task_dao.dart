class TaskDao {
  static const String tableSql = '''
CREATE TABLE $_tablename(
  $_name TEXT, 
  $_difficulty INTEGER, 
  $_image TEXT
)
''';
  static const String _tablename = 'taskTable';
  static const String _name = 'name';
  static const String _difficulty = 'difficulty';
  static const String _image = 'image';
}

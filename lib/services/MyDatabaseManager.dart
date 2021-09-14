/*import 'dart:async';
import 'package:doctor_assistant/models/SignUpInformation.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBDoctorManager {
  static final DBDoctorManager _instance = DBDoctorManager._internal();
  Future<Database> database;

  factory DBDoctorManager() {
    return _instance;
  }

  DBDoctorManager._internal() {
    openDB();
  }
  Database _datebase;

  Future openDB() async {
    if (_datebase == null) {
      _datebase = await openDatabase(
          join(await getDatabasesPath(), "doctor.db"),
          version: 1, onCreate: (Database db, int version) async {
        await db.execute("CREATE TABLE doctor("
            "id INTEGER PRIMARY KEY AUTOINCREMENT,"
            "fullName TEXT,"
            "email TEXT,"
            "phone TEXT,"
            "password TEXT,"
            "country TEXT,"
            "city TEXT,"
            "address TEXT)");
      });
    }
  }

  Future<int> insertDoctor(SignUpInformation doctor) async {
    await openDB();
    return await _datebase.insert('doctor', doctor.toMap());
  }
/*
  Future<List<Student>> getStudentList() async {
    await openDB();
    final List<Map<String, dynamic>> maps = await _datebase.query('student');

    return List.generate(maps.length, (index) {
      return Student(
          id: maps[index]['id'],
          name: maps[index]['name'],
          course: maps[index]['course']);
    });
  }*/
/*
  Future<int> updateStudent(Student student) async {
    await openDB();
    return await _datebase.update('student', student.toMap(),
        where: 'id=?', whereArgs: [student.id]);
  }

  Future<void> deleteStudent(int id) async {
    await openDB();
    await _datebase.delete("student", where: "id = ? ", whereArgs: [id]);
  }*/
}
*/
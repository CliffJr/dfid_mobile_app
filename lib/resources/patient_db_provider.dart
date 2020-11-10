import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'dart:async';
import '../models/new_patient_model.dart';

class PatientDbProvider {
  Database db;

  init() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, "patients.db");
    db = await openDatabase(path, version: 1,
        onCreate: (Database newDb, int version) {
      newDb.execute("""
        CREATE TABLE Patients {
          ncdNumber TEXT PRIMARY KEY,
          fullName TEXT,
          ncdStudyNumber TEXT,
          gender TEXT,
          dob TEXT,
          typeOfDiabetes TEXT,
          yearOfDmDiagnosis INTEGER 
        }
      """);
    });
  }

  fetchPatient(int ncdNumber) async {
    final maps = await db.query(
      "Patients",
      columns: null,
      where: "ncdNumber = ?",
      whereArgs: [ncdNumber],
    );

    if (maps.length > 0) {
      return maps.first;
    }

    return null;
  }

  Future<int> addPatient(PatientModel patient) {
    return db.insert("Patients", patient.toMap());
  }
}

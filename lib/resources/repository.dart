import 'dart:async';
import 'patient_db_provider.dart';
import '../models/new_patient_model.dart';

class Repository {
  PatientDbProvider dbProvider = PatientDbProvider();

  fetchTopPatients() {
    // return apiProvider.fetchTopPatients();
  }

  Future<PatientModel> fetchPatient(int ncdNumber) async {
    var patient = await dbProvider.fetchPatient(ncdNumber);
    if (patient != null) {
      return patient;
    }

    //patient = await apiProvider.fetchPatient(ncdNumber);
    dbProvider.addPatient(patient);

    return patient;
  }
}

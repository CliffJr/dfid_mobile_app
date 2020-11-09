class PatientModel {
  //declare the variables
  final String ncdNumber;
  final String fullName;
  final String ncdStudyNumber;
  final String gender;
  final String dob;
  final String typeOfDiabetes;
  final int yearOfDmDiagnosis;

//call contsructor
  PatientModel(
      {this.ncdNumber,
      this.fullName,
      this.ncdStudyNumber,
      this.gender,
      this.dob,
      this.typeOfDiabetes,
      this.yearOfDmDiagnosis});

  // Convert a Patient into a Map. The keys must correspond to the names of the
  // columns in the database.
  Map<String, dynamic> toMap() {
    return {
      'ncdNumber': ncdNumber,
      'fullName': fullName,
      'ncdStudyNumber': ncdStudyNumber,
      'gender': gender,
      'dob': dob,
      'typeOfDiabetes': typeOfDiabetes,
      'yearOfDmDiagnosis': yearOfDmDiagnosis,
    };
  }
}

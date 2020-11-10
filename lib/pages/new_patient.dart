import 'package:flutter/material.dart';

class AddPatient extends StatefulWidget {
  createState() {
    return AddPatientState();
  }
}

String dropdownStr = 'GENDER';

class AddPatientState extends State<AddPatient> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(title: Text('Register New Patient')),
        body: Container(
          margin: const EdgeInsets.all(20.0),
          child: Form(
              key: formKey,
              child: Column(children: [
                fullName(),
                patientNcdNumber(),
                patientNcdStudyNUmber(),
                dob(),
                typeOfDiebetes(),
                gender(),
                yearOfDmDiagnosis(),
                Container(margin: EdgeInsets.only(top: 25.0)),
                submitButton()
              ])),
        ));
  }

  Widget fullName() {
    return TextFormField(
      autofocus: true,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(labelText: 'FULL NAME'),
    );
  }

  Widget patientNcdNumber() {
    return TextFormField(
      autofocus: true,
      decoration: InputDecoration(labelText: 'PATIENT NCD NUMBER'),
    );
  }

  Widget patientNcdStudyNUmber() {
    return TextFormField(
      autofocus: true,
      decoration: InputDecoration(labelText: 'PATIENT NCD STUDY NUMBER'),
    );
  }

  Widget dob() {
    return TextFormField(
      autofocus: true,
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(labelText: 'DATE OF BIRTH'),
    );
  }

  Widget typeOfDiebetes() {
    return TextFormField(
      autofocus: true,
      decoration: InputDecoration(labelText: 'TYPE OF DIABETES'),
    );
  }

  Widget gender() {
    return DropdownButton<String>(
        value: dropdownStr,
        onChanged: (String newValue) {
          // setState(() {
          //   dropdownStr = newValue;
          // });
        },
        items: <String>['GENDER', 'Female', 'Male']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(value: value, child: Text(value));
        }).toList());
  }

  Widget yearOfDmDiagnosis() {
    return TextFormField(
      autofocus: true,
      decoration: InputDecoration(labelText: 'YEAR OF DM DIAGNOSIS'),
    );
  }

  submitButton() {
    return RaisedButton(
        color: Colors.blue,
        child: Text('Submit'),
        onPressed: () {
          formKey.currentState.reset();
        });
  }
}

//Second Form

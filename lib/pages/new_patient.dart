import 'package:flutter/material.dart';

class AddPatient extends StatefulWidget {
  createState() {
    return AddPatientState();
  }
}

String dropdownStr = 'GENDER';

class AddPatientState extends State<AddPatient> {
  // DateTime _date = DateTime.now();

  // Future<Null> selectDate(BuildContext context) async {
  //   final DateTime picked = await showDatePicker(
  //     context: context,
  //     initialDate: _date,
  //     firstDate: DateTime(1970),
  //     lastDate: DateTime(2100),
  //   );

  //   if (picked != null && picked != _date) {
  //     setState(() {
  //       _date = picked;
  //       print(_date.toString());
  //     });
  //   }
  // }

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(title: Text('Register New Patient')),
        body: Container(
          margin: const EdgeInsets.all(20.0),
          child: Form(
              child: Column(children: [
            fullName(),
            patientNcdNumber(),
            patientNcdStudyNUmber(),
            dob(),
            typeOfDiebetes(),
            gender(),
            yearOfDmDiagnosis()
          ])),
        ));
  }
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
    onTap: () {
      // selectDate(context);
    },
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
  return RaisedButton(child: Text('Submit'), onPressed: () {});
}

//Second Form

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './pages/new_patient.dart';
import './pages/patient_records.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String appTitle = 'SolidarMed eHealth';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SolidarMed - DFID Mobile App",
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: appTitle),
        '/addpatient': (context) => AddPatient(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text('My Page!'),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child:
                  Image(image: AssetImage('assets/images/solidarmedlogo.png')),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text('New Patient'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => AddPatient()));
                //Navigator.pop(context);
                Navigator.pushNamed(context, '/addpatient');
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Patient Records'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyStatelessWidget()));
              },
            ),
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('User Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AddPatient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register New Patient')),
      body: Center(
        child: RaisedButton(
          onPressed: () {},
          child: Text('Go back'),
        ),
      ),
    );
  }
}

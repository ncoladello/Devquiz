
import 'package:bytebank_p2/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'database/app_database.dart';
import 'models/contact.dart';



void main() {
  runApp(BytebankApp());
  save(Contact(0, 'alex', 1000)).then((id) {
    findAll().then((contacts) => debugPrint(contacts.toString()));
  });
}
class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    theme: ThemeData(
    primaryColor: Colors.green[900],
    accentColor: Colors.blueAccent[700],
    buttonTheme: ButtonThemeData(
    buttonColor: Colors.blueAccent[700],
    textTheme: ButtonTextTheme.primary,
    )
    ),
      home: Dashboard(),
    );
  }
}


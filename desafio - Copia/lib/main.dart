import 'package:desafio/screens/home_screen.dart';
import 'package:desafio/screens/login_screen.dart';
import 'package:desafio/screens/register_screen.dart';
import 'package:desafio/screens/reset_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Color(0xffaf262b),
        ),
        initialRoute: LoginScreen.id,
        routes: {
          RegisterScreen.id: (context) => RegisterScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          HomeScreen.id: (context) => HomeScreen(),
          ResetScreen.id: (context) => ResetScreen(),
        });
  }
}

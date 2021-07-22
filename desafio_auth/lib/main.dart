import 'package:desafio_auth/pages/home_page.dart';
import 'package:desafio_auth/pages/register_page.dart';
import 'package:desafio_auth/pages/start_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

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
        initialRoute: StartPage.id,
        routes: {
          StartPage.id: (context) => StartPage(),
          RegisterPage.id: (context) => RegisterPage(),
          LoginPage.id: (context) => LoginPage(),
          HomePage.id: (context) => HomePage(),
        });
  }
}

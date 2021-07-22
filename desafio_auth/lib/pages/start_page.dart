import 'package:desafio_auth/components/used_button_widget.dart';
import 'package:desafio_auth/pages/login_page.dart';
import 'package:desafio_auth/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class StartPage extends StatefulWidget {
  static const String id = 'start_page';

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xffaf262b),
      ),
      home: Scaffold(
        /*appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            title: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 13.2),
                child: Text(
                  "Bem Vindo",
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
          ),
        ),*/
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: Text(
                  'Desafio Firebase',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),
              UsedButton(
                title: 'Cadastrar',
                onPressed: () {
                  Navigator.pushNamed(context, RegisterPage.id);
                },
              ),
              UsedButton(
                title: 'Login',
                onPressed: () {
                  Navigator.pushNamed(context, LoginPage.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:desafio_auth/components/used_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'home_page.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  static const String id = 'register_page';
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xffaf262b),
      ),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            //backgroundColor: Color(0xffaf262b),
            title: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 13.2),
                child: Text(
                  "Cadastrar",
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
          ),
        ),
        body:


        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Center(
                child: Text(
                  'Usuário',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "email@email.com.br",
                ),
              ),
            ),
            SizedBox(
              child: Center(
                child: Text(
                  'Senha',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "senha",
                ),
              ),
            ),
            UsedButton(title: 'Cadastrar',onPressed: () {
              Navigator.pushNamed(context, LoginPage.id);
            },),

          ],
        )
        ,
      )
      ,
    );
  }

}
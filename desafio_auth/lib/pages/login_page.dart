import 'package:desafio_auth/components/used_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  static const String id = 'login_page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _auth = FirebaseAuth.instance;
  String email;
  String senha;


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
                  "Login",
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
                  'Email',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onChanged: (value){
                  email = value;
                },
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center ,

              children: [
                UsedButton(
                  title: 'Login',
                  onPressed: () {
                    Navigator.pushNamed(context, HomePage.id);
                  },
                ),
              ],
            ),

          ],
        )
        ,
      )
      ,
    );
  }

}
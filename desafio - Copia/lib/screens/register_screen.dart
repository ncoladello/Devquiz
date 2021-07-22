import 'package:desafio/components/used_button_widget.dart';
import 'package:desafio/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  static const String id = 'register_screen';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _auth = FirebaseAuth.instance;
  String email;
  String senha;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cadastrar",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
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
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
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
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                senha = value;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "senha",
              ),
            ),
          ),
          UsedButton(
            title: 'Cadastrar',
            onPressed: () async {
              try {
                final newUser = await _auth.createUserWithEmailAndPassword(
                  email: email, password: senha,);
                if(newUser!= null){
                  Navigator.pushNamed(context, HomeScreen.id);
                }
              }
               on FirebaseException catch(e){
                return e.message;
              }
            },
          ),
        ],
      ),
    );
  }
}

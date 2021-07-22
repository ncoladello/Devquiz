import 'package:desafio/components/used_button_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ResetScreen extends StatelessWidget {
  static const String id = 'reset_screen';
  final _auth = FirebaseAuth.instance;
  String email;
  String senha;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Resetar senha",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: Image.network(
                'https://seeklogo.com/images/F/firebase-logo-402F407EE0-seeklogo.com.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 40),
            child: Text(
              'Desafio Firebase',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            child: Center(
              child: Text(
                'Email',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: (value) {
                email = value;
              },
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "email@email.com.br",
              ),
            ),
          ),

          UsedButton(
            title: 'Resetar',
            onPressed: ()  {

               _auth.sendPasswordResetEmail(email: email);


            },
          ),

        ],
      ),
    );

  }
}

import 'package:desafio/components/used_button_widget.dart';
import 'package:desafio/screens/home_screen.dart';
import 'package:desafio/screens/register_screen.dart';
import 'package:desafio/screens/reset_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  String email;
  String senha;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          SizedBox(
            child: Center(
              child: Text(
                'Senha',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: (value) {
                senha = value;
              },
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "senha",
              ),
            ),
          ),
          UsedButton(
            title: 'Entrar',
            onPressed: () async {
              try {
                final user = await _auth.signInWithEmailAndPassword(
                    email: email, password: senha);
                if (user != null) {
                  Navigator.pushNamed(context, HomeScreen.id);
                }
              } on FirebaseException catch (e) {
                return e.message;
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ResetScreen.id);

                  },
                  child: Text(
                    "Recuperar Senha",
                  ),
                ),
                Text(
                  "      |       ",
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegisterScreen.id);
                  },
                  child: Text(
                    "Cadastre-se ",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login_page/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(LoginFirebase());
}

class LoginFirebase extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}

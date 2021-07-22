import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class LoginPage extends StatelessWidget {
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
            title: Padding(
              padding: const EdgeInsets.only(top: 13.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 40),
                  ),
                  Image.network(
                      "https://it-eam.com/site-iteam-2019/wp-content/themes/iteam-2015/images/logos/logo-footer.png"),
                ],
              ),
            ),
          ),
        ),
        body: Column(
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
            Container(
              width: 200,
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(

                  primary: Color(0xffaf262b),
                ),
                onPressed: () {},
                child: Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

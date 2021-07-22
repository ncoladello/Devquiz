import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Color(0xffaf262b),
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

    );
  }
}

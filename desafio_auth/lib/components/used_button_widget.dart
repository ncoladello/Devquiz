
import 'package:flutter/material.dart';

class UsedButton extends StatelessWidget {
  UsedButton({this.title, @required this.onPressed});

  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: 300,
        height: 70,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xffaf262b),
          ),
          onPressed: onPressed,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}

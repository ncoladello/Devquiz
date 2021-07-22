import 'package:flutter/material.dart';

class MobileTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.bottomRight,
        child: Text(
          'versão 1.0.0 – Teste Mobile',
          style: TextStyle(fontSize: 10),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}

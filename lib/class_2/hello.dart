import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello World!",
      style: TextStyle(
        color: Color(0xffffffff).withOpacity(0.4),
        fontSize: 40,
      ),
    );
  }
}

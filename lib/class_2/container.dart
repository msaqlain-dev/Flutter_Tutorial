import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      // padding: EdgeInsets.all(20),
      // padding: EdgeInsets.fromLTRB(50, 20, 10, 10),
      // padding: EdgeInsets.only(left: 20, top: 20),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      margin: EdgeInsets.all(50),
      child: Text("Flutter Sukkur"),
    );
  }
}

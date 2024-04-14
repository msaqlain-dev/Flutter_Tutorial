import 'package:flutter/material.dart';

class RowAndColumn extends StatelessWidget {
  const RowAndColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Spacer(),
        Text("A"),
        // Spacer(),
        Text("B"),
        // Spacer(),
        Text("C"),
        // Spacer(),
      ],
    );
  }
}

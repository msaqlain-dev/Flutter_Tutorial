import 'package:flutter/material.dart';
import 'package:tutorial/class_2/container.dart';
import 'package:tutorial/class_2/hello.dart';
import 'package:tutorial/class_3/row_column.dart';
import 'package:tutorial/class_3/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: HelloWorld(),
      home: RowAndColumn(),
    );
  }
}

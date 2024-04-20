import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text('My Stateful Screen'),
        leading: InkWell(
          onTap: () {
            print('back icon is clicked');
          },
          child: Icon(Icons.arrow_back),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              print('Search icon is clicked');
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Count: $count',
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        onPressed: () {
          setState(() {
            count += 2;
          });
          print(count);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

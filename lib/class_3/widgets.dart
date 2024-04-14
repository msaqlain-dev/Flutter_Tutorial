import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Container(
          // height: double.infinity,
          // width: double.infinity,
          // color: Colors.green,
          // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          // margin: EdgeInsets.all(50),
          // child: Center(
          //   child: Text("A"),
          // ),
          // child: Padding(
          //   padding: const EdgeInsets.all(40),
          //   child: Text("A"),
          // ),
          // child: Icon(
          //   Icons.person,
          //   size: 100,
          //   color: Colors.black,
          // ),
          // child: Image.network(
          //     "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
          child: ElevatedButton(
            // style: ButtonStyle(
            //   backgroundColor: MaterialStateProperty.all(Colors.red),
            //   foregroundColor: MaterialStateProperty.all(Colors.white),
            //   elevation: MaterialStateProperty.all(20),
            // ),
            onPressed: () {
              print("Hello World");
            },
            child: Text("Button"),
          ),
        ),
      ),
    );
  }
}

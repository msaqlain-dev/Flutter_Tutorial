import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ['Muhammad Saqlain', 'Sohail', 'Ali'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text('My App Screen'),
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
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView.builder(
          itemCount: 10,
          // scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            // return Text(
            //   '$index data',
            //   style: TextStyle(fontSize: 22),
            // );
            return Column(
              children: [
                ContactTile(),
                SizedBox(
                  height: 20,
                ),
              ],
            );
          },
        ),
      ),
      // body: SingleChildScrollView(
      //   child: Container(
      //     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      //     child: Column(
      //       children: [
      //         // ContactTile(),
      //         // SizedBox(
      //         //   height: 20,
      //         // ),
      //         // ContactTile(),
      //         // SizedBox(
      //         //   height: 20,
      //         // ),
      //         // ContactTile(),
      //         // SizedBox(
      //         //   height: 20,
      //         // ),
      //         // ContactTile(),
      //         // Container(
      //         //   padding: EdgeInsets.symmetric(horizontal: 10),
      //         //   width: double.infinity,
      //         //   height: 100,
      //         //   decoration: BoxDecoration(
      //         //     color: const Color.fromARGB(255, 241, 182, 251),
      //         //     borderRadius: BorderRadius.circular(20),
      //         //   ),
      //         //   child: const Row(
      //         //     children: [
      //         //       CircleAvatar(
      //         //         radius: 30,
      //         //         backgroundColor: Colors.white,
      //         //         child: Icon(Icons.person),
      //         //       ),
      //         //       SizedBox(
      //         //         width: 20,
      //         //       ),
      //         //       Column(
      //         //         mainAxisAlignment: MainAxisAlignment.center,
      //         //         crossAxisAlignment: CrossAxisAlignment.start,
      //         //         children: [
      //         //           Text(
      //         //             'Muhammad Saqlain',
      //         //             style: TextStyle(
      //         //               fontSize: 18,
      //         //               fontWeight: FontWeight.w500,
      //         //             ),
      //         //           ),
      //         //           Text('Developer'),
      //         //         ],
      //         //       )
      //         //     ],
      //         //   ),
      //         // ),
      //         // SizedBox(
      //         //   height: 20,
      //         // ),
      //         // Container(
      //         //   padding: EdgeInsets.symmetric(horizontal: 10),
      //         //   width: double.infinity,
      //         //   height: 100,
      //         //   decoration: BoxDecoration(
      //         //     color: const Color.fromARGB(255, 241, 182, 251),
      //         //     borderRadius: BorderRadius.circular(20),
      //         //   ),
      //         //   child: const Row(
      //         //     children: [
      //         //       CircleAvatar(
      //         //         radius: 30,
      //         //         backgroundColor: Colors.white,
      //         //         child: Icon(Icons.person),
      //         //       ),
      //         //       SizedBox(
      //         //         width: 20,
      //         //       ),
      //         //       Column(
      //         //         mainAxisAlignment: MainAxisAlignment.center,
      //         //         crossAxisAlignment: CrossAxisAlignment.start,
      //         //         children: [
      //         //           Text(
      //         //             'Muhammad Saqlain',
      //         //             style: TextStyle(
      //         //               fontSize: 18,
      //         //               fontWeight: FontWeight.w500,
      //         //             ),
      //         //           ),
      //         //           Text('Developer'),
      //         //         ],
      //         //       )
      //         //     ],
      //         //   ),
      //         // ),
      //         // SizedBox(
      //         //   height: 20,
      //         // ),
      //         // Container(
      //         //   padding: EdgeInsets.symmetric(horizontal: 10),
      //         //   width: double.infinity,
      //         //   height: 100,
      //         //   decoration: BoxDecoration(
      //         //     color: const Color.fromARGB(255, 241, 182, 251),
      //         //     borderRadius: BorderRadius.circular(20),
      //         //   ),
      //         //   child: const Row(
      //         //     children: [
      //         //       CircleAvatar(
      //         //         radius: 30,
      //         //         backgroundColor: Colors.white,
      //         //         child: Icon(Icons.person),
      //         //       ),
      //         //       SizedBox(
      //         //         width: 20,
      //         //       ),
      //         //       Column(
      //         //         mainAxisAlignment: MainAxisAlignment.center,
      //         //         crossAxisAlignment: CrossAxisAlignment.start,
      //         //         children: [
      //         //           Text(
      //         //             'Muhammad Saqlain',
      //         //             style: TextStyle(
      //         //               fontSize: 18,
      //         //               fontWeight: FontWeight.w500,
      //         //             ),
      //         //           ),
      //         //           Text('Developer'),
      //         //         ],
      //         //       )
      //         //     ],
      //         //   ),
      //         // ),
      //         // SizedBox(
      //         //   height: 20,
      //         // ),
      //         // Container(
      //         //   padding: EdgeInsets.symmetric(horizontal: 10),
      //         //   width: double.infinity,
      //         //   height: 100,
      //         //   decoration: BoxDecoration(
      //         //     color: const Color.fromARGB(255, 241, 182, 251),
      //         //     borderRadius: BorderRadius.circular(20),
      //         //   ),
      //         //   child: const Row(
      //         //     children: [
      //         //       CircleAvatar(
      //         //         radius: 30,
      //         //         backgroundColor: Colors.white,
      //         //         child: Icon(Icons.person),
      //         //       ),
      //         //       SizedBox(
      //         //         width: 20,
      //         //       ),
      //         //       Column(
      //         //         mainAxisAlignment: MainAxisAlignment.center,
      //         //         crossAxisAlignment: CrossAxisAlignment.start,
      //         //         children: [
      //         //           Text(
      //         //             'Muhammad Saqlain',
      //         //             style: TextStyle(
      //         //               fontSize: 18,
      //         //               fontWeight: FontWeight.w500,
      //         //             ),
      //         //           ),
      //         //           Text('Developer'),
      //         //         ],
      //         //       )
      //         //     ],
      //         //   ),
      //         // ),
      //         // SizedBox(
      //         //   height: 20,
      //         // ),
      //         // Container(
      //         //   padding: EdgeInsets.symmetric(horizontal: 10),
      //         //   width: double.infinity,
      //         //   height: 100,
      //         //   decoration: BoxDecoration(
      //         //     color: const Color.fromARGB(255, 241, 182, 251),
      //         //     borderRadius: BorderRadius.circular(20),
      //         //   ),
      //         //   child: const Row(
      //         //     children: [
      //         //       CircleAvatar(
      //         //         radius: 30,
      //         //         backgroundColor: Colors.white,
      //         //         child: Icon(Icons.person),
      //         //       ),
      //         //       SizedBox(
      //         //         width: 20,
      //         //       ),
      //         //       Column(
      //         //         mainAxisAlignment: MainAxisAlignment.center,
      //         //         crossAxisAlignment: CrossAxisAlignment.start,
      //         //         children: [
      //         //           Text(
      //         //             'Muhammad Saqlain',
      //         //             style: TextStyle(
      //         //               fontSize: 18,
      //         //               fontWeight: FontWeight.w500,
      //         //             ),
      //         //           ),
      //         //           Text('Developer'),
      //         //         ],
      //         //       )
      //         //     ],
      //         //   ),
      //         // ),
      //         // SizedBox(
      //         //   height: 20,
      //         // ),
      //         // Container(
      //         //   padding: EdgeInsets.symmetric(horizontal: 10),
      //         //   width: double.infinity,
      //         //   height: 100,
      //         //   decoration: BoxDecoration(
      //         //     color: const Color.fromARGB(255, 241, 182, 251),
      //         //     borderRadius: BorderRadius.circular(20),
      //         //   ),
      //         //   child: const Row(
      //         //     children: [
      //         //       CircleAvatar(
      //         //         radius: 30,
      //         //         backgroundColor: Colors.white,
      //         //         child: Icon(Icons.person),
      //         //       ),
      //         //       SizedBox(
      //         //         width: 20,
      //         //       ),
      //         //       Column(
      //         //         mainAxisAlignment: MainAxisAlignment.center,
      //         //         crossAxisAlignment: CrossAxisAlignment.start,
      //         //         children: [
      //         //           Text(
      //         //             'Muhammad Saqlain',
      //         //             style: TextStyle(
      //         //               fontSize: 18,
      //         //               fontWeight: FontWeight.w500,
      //         //             ),
      //         //           ),
      //         //           Text('Developer'),
      //         //         ],
      //         //       )
      //         //     ],
      //         //   ),
      //         // ),
      //         // SizedBox(
      //         //   height: 20,
      //         // ),
      //         // Container(
      //         //   padding: EdgeInsets.symmetric(horizontal: 10),
      //         //   width: double.infinity,
      //         //   height: 100,
      //         //   decoration: BoxDecoration(
      //         //     color: const Color.fromARGB(255, 241, 182, 251),
      //         //     borderRadius: BorderRadius.circular(20),
      //         //   ),
      //         //   child: const Row(
      //         //     children: [
      //         //       CircleAvatar(
      //         //         radius: 30,
      //         //         backgroundColor: Colors.white,
      //         //         child: Icon(Icons.person),
      //         //       ),
      //         //       SizedBox(
      //         //         width: 20,
      //         //       ),
      //         //       Column(
      //         //         mainAxisAlignment: MainAxisAlignment.center,
      //         //         crossAxisAlignment: CrossAxisAlignment.start,
      //         //         children: [
      //         //           Text(
      //         //             'Muhammad Saqlain',
      //         //             style: TextStyle(
      //         //               fontSize: 18,
      //         //               fontWeight: FontWeight.w500,
      //         //             ),
      //         //           ),
      //         //           Text('Developer'),
      //         //         ],
      //         //       )
      //         // ],
      //         // ),
      //         // ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

class ContactTile extends StatelessWidget {
  const ContactTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 241, 182, 251),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: Icon(Icons.person),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Muhammad Saqlain',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text('Developer'),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashBoard'),
        backgroundColor: Colors.green.shade100,
      ),
      body: Container(
        color: Colors.grey,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.purple.shade100,
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(25),
              //   topRight: Radius.circular(25),
              //   bottomLeft: Radius.circular(25),
              // ),
              border: BoxBorder.all(width: 1.5, color: Colors.lightGreen),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 130, 153, 183),
                  spreadRadius: 5,
                  blurRadius: 10,
                ),
              ],
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}

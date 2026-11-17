import 'package:flutter/material.dart';

void main() {
  runApp(ExpandedWidgetApp());
}

class ExpandedWidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expanded Widget",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ExpandedHomeScreen(),
    );
  }
}

class ExpandedHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Widget View"),
        backgroundColor: Colors.green.shade100,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 10,
                child: Container(width: 50, height: 100, color: Colors.purple),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  width: 50,
                  height: 100,
                  color: const Color.fromARGB(255, 180, 166, 182),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: 50,
                  height: 100,
                  color: const Color.fromARGB(255, 162, 225, 26),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: 50,
                  height: 100,
                  color: const Color.fromARGB(255, 17, 40, 210),
                ),
              ),
            ],
          ),

          Expanded(
            flex: 8,
            child: Container(
              height: 100,
              color: const Color.fromARGB(255, 209, 180, 93),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 100,
              color: const Color.fromARGB(255, 16, 188, 142),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: const Color.fromARGB(255, 6, 169, 187),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              color: const Color.fromARGB(255, 202, 39, 104),
            ),
          ),
        ],
      ),
    );
  }
}

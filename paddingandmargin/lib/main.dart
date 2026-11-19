import 'package:flutter/material.dart';

void main() {
  runApp(PaddingMargin());
}

class PaddingMargin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Padding And Margin',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyPaddingMarginPage(),
    );
  }
}

class MyPaddingMarginPage extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(title: Text('Padding And Margin')),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Hello, Welcome',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}

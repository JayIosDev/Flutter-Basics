import 'package:flutter/material.dart';

void main() {
  runApp(CardWidget());
}

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Widget',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: CardPage(),
    );
  }
}

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Widget')),
      body: Center(
        child: Card(
          elevation: 5,
          shadowColor: Colors.green,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 100,
              child: Center(child: Text("Card Widget")),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '1',
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '2',
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '3',
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '4',
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '5',
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'A',
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'B',
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'C',
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'D',
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'E',
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Text(
              'C3',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            Text(
              'C4',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            Text(
              'C5',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}

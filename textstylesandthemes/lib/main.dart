import 'package:flutter/material.dart';
import 'package:textstylesandthemes/ui_helper/utils/texttheme.dart';

void main() {
  runApp(TextStylesAndThemesWidget());
}

class TextStylesAndThemesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Styles And Themes",
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            color: Colors.blue.shade700,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          titleSmall: TextStyle(
            color: const Color.fromARGB(255, 219, 149, 17),
            fontWeight: FontWeight.normal,
            fontStyle: .italic,
            fontSize: 25,
          ),
        ),
      ),
      home: TextStylesAndThemesPage(),
    );
  }
}

class TextStylesAndThemesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Styles And Themes')),
      body: Column(
        children: [
          Text('Text 1', style: Theme.of(context).textTheme.headlineLarge),
          Text(
            'Text 2',
            style: TextStyle(
              color: const Color.fromARGB(255, 219, 149, 17),
              fontWeight: FontWeight.normal,
              fontStyle: .italic,
              fontSize: 18,
            ),
          ),
          Text('Text 3', style: mainheadline()),
          Text('Text 4', style: subheadline()),
        ],
      ),
    );
  }
}

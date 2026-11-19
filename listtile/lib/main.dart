import 'package:flutter/material.dart';

void main() {
  runApp(ListTileWidget());
}

class ListTileWidget extends StatelessWidget {
  @override
  Widget build(Object context) {
    return MaterialApp(
      title: 'ListTile',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: ListTilePage(),
    );
  }
}

class ListTilePage extends StatelessWidget {
  @override
  Widget build(Object context) {
    var namesArray = [
      'Jay',
      'Ram',
      'Raju',
      'Mahi',
      'Mohit',
      'Manu',
      'Jay',
      'Ram',
      'Raju',
      'Mahi',
      'Mohit',
      'Manu',
    ];

    return Scaffold(
      appBar: AppBar(title: Text('ListTile')),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text('${index + 1}'),
            title: Text(namesArray[index]),
            subtitle: Text('Developer'),
            trailing: Icon(Icons.add),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(height: 10, thickness: 1);
        },
        itemCount: namesArray.length,
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(CircularAvatarWithListTileWidget());
}

class CircularAvatarWithListTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circular Avatar',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: CircularAvatarPage(),
    );
  }
}

class CircularAvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var namesArray = [
      'Jay',
      'Ram',
      'Rohit',
      'Mohit',
      'Manu',
      'Jay',
      'Ram',
      'Rohit',
      'Mohit',
      'Manu',
      'Jay',
      'Ram',
      'Rohit',
      'Mohit',
      'Manu',
      'Jay',
      'Ram',
      'Rohit',
      'Mohit',
      'Manu',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Circular Avatar',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      backgroundColor: Colors.amber.shade100,
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(
                'Hey',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'AgravePro',
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              backgroundImage: AssetImage('assets/images/profile.png'),
              backgroundColor: Colors.blue,
              radius: 30,
            ),
            trailing: Icon(Icons.add),
            title: Text(namesArray[index]),
            subtitle: Text('IOS Developer'),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 5,
            thickness: 2,
            color: Colors.deepOrange.shade100,
          );
        },
        itemCount: namesArray.length,
      ),
    );
  }
}

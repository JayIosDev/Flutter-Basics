import 'package:flutter/material.dart';

void main() {
  runApp(TextFieldWidget());
}

class TextFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField Widget',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: TextFieldPage(),
    );
  }
}

class TextFieldPage extends StatelessWidget {
  var userNameTF = TextEditingController();
  var passwordTF = TextEditingController();

  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TextField Example',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: userNameTF,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 2,
                      color: const Color.fromARGB(255, 163, 168, 163),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 2, color: Colors.green),
                  ),
                  prefixIcon: Icon(Icons.email, color: Colors.orange),
                  suffixIcon: IconButton(
                    onPressed: () {
                      userNameTF.text = '';
                    },
                    icon: Icon(Icons.cancel, color: Colors.orange),
                  ),
                ),
              ),
              Container(height: 10),
              TextField(
                controller: passwordTF,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 2,
                      color: const Color.fromARGB(255, 163, 168, 163),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 2, color: Colors.green),
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.orange),
                ),
              ),
              Container(height: 10),
              ElevatedButton(
                onPressed: () {
                  String username = userNameTF.text.toString();
                  String password = passwordTF.text.toString();

                  print('User name is ${username}');
                  print('Password is ${password}');
                },
                child: Text('Login'),
              ),
              // Container(height: 10),
              // TextField(
              //   enabled: false,
              //   decoration: InputDecoration(
              //     enabledBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(15),
              //       borderSide: BorderSide(
              //         width: 2,
              //         color: const Color.fromARGB(255, 163, 168, 163),
              //       ),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(15),
              //       borderSide: BorderSide(width: 2, color: Colors.green),
              //     ),
              //     disabledBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(15),
              //       borderSide: BorderSide(
              //         width: 2,
              //         color: Colors.grey.shade500,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    // Text Example
    // return Scaffold(
    //   appBar: AppBar(
    //     // TRY THIS: Try changing the color here to a specific color (to
    //     // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
    //     // change color while the other colors stay the same.
    //     backgroundColor: const Color.fromARGB(255, 12, 207, 171),
    //     // Here we take the value from the MyHomePage object that was created by
    //     // the App.build method, and use it to set our appbar title.
    //     title: Text('Flutter Container App'),
    //   ),
    //   body: Center(
    //     child: Container(
    //       width: double.infinity,
    //       height: double.infinity,
    //       color: Colors.blue,
    //       child: Padding(
    //         padding: const EdgeInsets.all(1.0),
    //         child:Text(
    //           'Hello Developer',
    //           style: TextStyle(
    //             color: Colors.black,
    //             fontWeight: FontWeight.normal,
    //             fontSize: 25,
    //             backgroundColor: Colors.grey.shade100,
    //             decoration: TextDecoration.underline,
    //             decorationColor: Colors.orange,
    //             decorationStyle: TextDecorationStyle.dashed,
    //             decorationThickness: 2,
    //           ),
    //           textAlign: TextAlign.left,
    //         ),
    //       ),
    //     ),
    //   ),
    // );

    // TextButton Example
    // return Scaffold(
    //   appBar: AppBar(title: Text('Text Button Example')),
    //   body: TextButton(
    //     child: Text(
    //       'Press Me!',
    //       style: TextStyle(
    //         fontSize: 20,
    //         fontWeight: FontWeight.bold,
    //         color: const Color.fromARGB(255, 243, 152, 33),
    //       ),
    //     ),
    //     onPressed: () {
    //       print('Hello Developer, Pressed the button');
    //     },onLongPress: () {
    //       print('Hello Developer, Long Pressed the button');
    //     },
    //   ),
    // );

    // ElevatedButton Example
    // return Scaffold(
    //   appBar: AppBar(title: Text('Elevated Button Example')),
    //   body: ElevatedButton(
    //     child: Text('Press Me!'),
    //     onPressed: () {
    //       print('Hello Developer, Pressed Elevated the button');
    //     },
    //   ),
    // );

    // OutlinedButton Example
    // return Scaffold(
    //   appBar: AppBar(title: Text('Outlined Button Example')),
    //   body: OutlinedButton(
    //     child: Text('Press Me!'),
    //     onPressed: () {
    //       print('Hello Developer, Pressed Outlined the button');
    //     },
    //   ),
    // );

    // FloatingActionButton Example
    // return Scaffold(
    //   appBar: AppBar(title: Text('Floating Action Button Example')),
    //   body: Center(
    //     child: Text('Hello Developer'),
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () {
    //       print('Hello Developer, Pressed FloatingActionButton');
    //     },
    //     child: Icon(Icons.add),
    //   ),
    // );

    // IconButton Example
    // return Scaffold(
    //   appBar: AppBar(title: Text('Icon Button Example')),
    //   body: Center(
    //     child: IconButton(
    //       icon: Icon(Icons.thumb_up),
    //       onPressed: () {
    //         print('Hello Developer, Pressed IconButton');
    //       },
    //     ),
    //   ),
    // );

    return Scaffold(
      appBar: AppBar(title: Text('Image Example')),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Image.asset('assets/images/parrot.jpg'),
        ),
      ),
    );
  }
}

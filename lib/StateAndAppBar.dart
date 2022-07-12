import 'package:flutter/material.dart';
import 'package:learn_flutter/StateAndAppBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Counter(),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Counter();
  }
}

class _Counter extends State {
  int i = 1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(  // Scaffold is a combination of AppBar,Body,Sidebar & Bottom Bar
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 239, 241, 109),
        foregroundColor: Color.fromARGB(255, 0, 0, 0),
        bottom: Tab(child: Text('Random')),
        flexibleSpace: Tab(child: Text('normal')),
        elevation: 5, // lifts up the app bar
        shadowColor: Colors.red,
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          size: 40,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        title: Text('Flutter Stateful'),
        actions: [
          Icon(Icons.abc),
          Icon(Icons.ac_unit),
          Icon(Icons.car_rental_outlined)
        ],
      ),
      body: Center(
        child: Text('$i'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          i++;
          setState(() {});
          print(i);
        }),
        child: Icon(Icons.add),
      ),
    );
  }
}

//Stateless
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       home: _MyApp(),
//     );
//   }
// }

// class _MyApp extends StatelessWidget {
//   int i = 1;
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Test 1'),
//       ),
//       body: Center(child: Text('$i')),
//       floatingActionButton: FloatingActionButton(onPressed: () {
//         i++;
//         print(i);
//       },
//       child: Text('Add'),),
//     );
//   }
// }

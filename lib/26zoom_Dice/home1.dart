import 'package:flutter/material.dart';
import 'package:learn_flutter/26zoom_Dice/about2.dart';

class OnePage extends StatefulWidget {
  OnePage({Key? key}) : super(key: key);

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to About Page'),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => TwoPage()));
          },
        ),
      ),
    );
  }
}

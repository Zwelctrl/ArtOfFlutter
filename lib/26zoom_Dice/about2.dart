import 'package:flutter/material.dart';
import 'package:learn_flutter/26zoom_Dice/detail3.dart';

class TwoPage extends StatefulWidget {
  TwoPage({Key? key}) : super(key: key);

  @override
  State<TwoPage> createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 2'),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => ThreePage()),
                    (route) => true);
              },
              child: Text('Go to Detail PAge')),
        ));
  }
}

import 'package:flutter/material.dart';

class template extends StatelessWidget {
  final String title;
  final Widget bodyWid;
  const template({Key? key, required this.title, required this.bodyWid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: bodyWid,
    );
  }
}

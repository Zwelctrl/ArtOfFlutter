import 'package:flutter/material.dart';

class StackExp extends StatelessWidget {
  const StackExp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Center(
          child: Container(
        width: 200,
        height: 200,
        color: Colors.black12,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Card(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.cyan,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                width: 80,
                height: 80,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
              ),
            ),
            Positioned(
              right: 20,
              top: 20,
              child: Container(
                width: 70,
                height: 70,
                color: Colors.red,
              ),
            )
          ],
        ),
      )),
    );
  }
}

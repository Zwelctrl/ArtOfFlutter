import 'package:flutter/material.dart';

class CustomBTN extends StatelessWidget {
  const CustomBTN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InkWell & Gestures'),
      ),
      body: Center(
        //Inkwell
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          radius: 200,
          overlayColor: MaterialStateProperty.all(Colors.amber),
          splashColor: Colors.cyan,
          onTap: () {
            print('On Tap');
          },
          onDoubleTap: () {
            print('On Double Tap');
          },
          onLongPress: () {
            print('On Long Press');
          },
          onFocusChange: (e) {
            print(e);
          },
          onTapDown: (e) {
            print('On Tap Down');
          },
          onTapCancel: () {
            print('On Tap Cancel');
          },
          child: Container(
            width: 100,
            height: 100,
            // color: Colors.grey,
          ),
        ),

        //Gesture detector
        // child: GestureDetector(
        //   onTap: () {
        //     print('Gestures On Tap');
        //   },
        //   child: Container(
        //     color: Colors.amber,
        //     width: 100,
        //     height: 100,
        //   ),
        // ),
      ),
    );
  }
}

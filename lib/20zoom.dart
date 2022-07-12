import 'package:flutter/material.dart';

class Learn extends StatelessWidget {
  const Learn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter StateLess'),
      ),
      body: TextButton(
        onPressed: () {},
        child: Text('Hello'),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.amber),
          foregroundColor: MaterialStateProperty.all(Colors.black),
          overlayColor: MaterialStateProperty.all(Colors.brown),
          elevation: MaterialStateProperty.all(22),
        ),
      ),
      // body: Container(
      //   margin: EdgeInsets.only(left: 30, top: 30, right: 30),
      //   width: double.infinity,
      //   height: 100,
      //   child: Text('Hello Bitch'),
      //   alignment: Alignment.center,
      //   // color: Colors.amber,
      //   decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //         colors: [
      //           Colors.amber,
      //           Colors.grey,
      //         ],
      //         // stops: [
      //         //   1,
      //         //   2,
      //         // ],
      //         begin: Alignment.bottomCenter,
      //         end: Alignment.topRight,
      //       ),
      //       color: Colors.amber,
      //       border: Border.all(
      //         width: 10,
      //         color: Colors.red,
      //       ),
      //       borderRadius: BorderRadius.only(bottomRight: Radius.circular(80)),
      //       boxShadow: [
      //         BoxShadow(color: Colors.brown, blurRadius: 20),
      //       ]),
      // ),
    );
  }
}

//zoom 30:43

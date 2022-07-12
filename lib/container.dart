import 'package:flutter/material.dart';

class ContainerExp extends StatelessWidget {
  const ContainerExp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(  //container takes all the spaces it can take
        //margin
        //margin: EdgeInsets.all(10),
        //margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
        //margin: EdgeInsets.only(left: 20, top: 20, right: 30, bottom: 40),
        margin: EdgeInsets.symmetric(vertical: 250, horizontal: 100),

        //padding (same as margin)
        padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),

        //alignment
        alignment: Alignment.center,

        //foreground decoration
        foregroundDecoration: BoxDecoration(), // decoration of a child widget

        //decoration
        decoration: BoxDecoration(
          color: Colors.amber,

          //shape
          shape: BoxShape.rectangle, // error if use border radius

          //gradient
          gradient: LinearGradient(
            colors: [Colors.amber, Colors.indigo],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            // stops: [0, 1, 2],
            transform: GradientRotation(3),
          ),

          //background blend mode
          // backgroundBlendMode: BlendMode.dst,

          //borderRadius: BorderRadius.all(Radius.circular(10)),
          borderRadius: BorderRadius.circular(20),

          //boxshadow
          boxShadow: [
            BoxShadow(
              color: Colors.blue,
              offset: Offset(5, 5),
              blurRadius: 5,
              blurStyle: BlurStyle.outer,
              spreadRadius: 2,
            )
          ],
          border: Border.all(
            width: 10,
            color: Colors.red,
            style: BorderStyle.solid,
          ),
        ),

        width: 100,
        height: 100,
        // color: Colors.blue,  //cant use both decoration & color
        child: Text('a'),
      ),
    );
  }
}

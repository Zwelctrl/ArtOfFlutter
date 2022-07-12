import 'package:flutter/material.dart';

class CardExp extends StatelessWidget {
  const CardExp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Card01'),
        ),
        body: Center(

          //Card
          child: Card(
            shadowColor: Colors.blue,
            elevation: 5,
            borderOnForeground: true,
            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
          ),

          
        ));
  }
}

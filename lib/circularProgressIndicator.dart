import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/template.dart';

class CircularIndicatorExp extends StatefulWidget {
  CircularIndicatorExp({Key? key}) : super(key: key);

  @override
  State<CircularIndicatorExp> createState() => _CircularIndicatorExpState();
}

class _CircularIndicatorExpState extends State<CircularIndicatorExp> {
  double i = 0;

  @override
  Widget build(BuildContext context) {
    if (i != 1) {
      Future.delayed(Duration(seconds: 1), () {
        i += 0.1;
        setState(() {});
      });
    }
    return template(
        title: 'Circular Progress Indicator Exp',
        bodyWid: Center(
          child: SizedBox(
              child: CircularProgressIndicator(
            color: Colors.amber,
            value: null,
            backgroundColor: Colors.red,
            strokeWidth: 4,
          )),
        ));
  }
}

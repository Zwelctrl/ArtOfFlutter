import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learn_flutter/ScrollBuilder/scrollBuilders.dart';
import 'package:learn_flutter/template.dart';

class RefreshIndicatorExp extends StatefulWidget {
  RefreshIndicatorExp({Key? key}) : super(key: key);

  @override
  State<RefreshIndicatorExp> createState() => _RefreshIndicatorExpState();
}

class _RefreshIndicatorExpState extends State<RefreshIndicatorExp> {
  int x = 10;
  @override
  Widget build(BuildContext context) {
    return template(
        title: 'Refresh Indicator',
        bodyWid: RefreshIndicator(
          // if false, refresh indicator will not pop up
          notificationPredicate: (e) {
            return true;
          },
          displacement: 50,

          //defines the distance the indicator pop from the app bar
          edgeOffset: 70,
          color: Colors.amber,
          backgroundColor: Colors.black,
          strokeWidth: 6,
          onRefresh: () async {
            await Future.delayed(Duration(seconds: 3), () {
              x = Random().nextInt(10);
              setState(() {});
            });
          },
          child: ListView.builder(
              itemCount: x, itemBuilder: (_, x) => Container02(i: x)),
        ));
  }
}

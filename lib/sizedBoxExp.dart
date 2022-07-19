import 'package:flutter/material.dart';
import 'package:learn_flutter/ScrollBuilder/scrollBuilders.dart';
import 'package:learn_flutter/ScrollBuilder/singleChildScrollView.dart';
import 'package:learn_flutter/template.dart';

class SizedBoxExp extends StatefulWidget {
  SizedBoxExp({Key? key}) : super(key: key);

  @override
  State<SizedBoxExp> createState() => _SizedBoxExpState();
}

class _SizedBoxExpState extends State<SizedBoxExp> {
  @override
  Widget build(BuildContext context) {
    return template(
        title: 'SizedBox',
        bodyWid: Center(
            child: ListView(
          children: [
            for (int i = 0; i < 3; i++) Container01(i: i),
            SizedBox(
              // width: MediaQuery.of(context).size.width,
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < 10; i++) Container02(i: i),
                ],
              ),
            ),
            for (int i = 0; i < 3; i++) Container01(i: i),
            for (int i = 0; i < 3; i++) Container01(i: i),
            SizedBox(
              // width: MediaQuery.of(context).size.width,
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < 10; i++) Container02(i: i),
                ],
              ),
            ),
            for (int i = 0; i < 3; i++) Container01(i: i),
            for (int i = 0; i < 3; i++) Container01(i: i),
          ],
        )));
  }
}




/**
 * SizedBox(
              width: 100,
              height: 100,
              child: Center(
                child:
                    ElevatedButton(onPressed: () {}, child: Text("click Me")),
              )),
 */
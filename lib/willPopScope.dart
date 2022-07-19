import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learn_flutter/ScrollBuilder/scrollBuilders.dart';
import 'package:learn_flutter/template.dart';

enum willPopState { decline, request, access }

class WillPopExp extends StatefulWidget {
  WillPopExp({Key? key}) : super(key: key);

  @override
  State<WillPopExp> createState() => _WillPopExpState();
}

class _WillPopExpState extends State<WillPopExp> {
  bool requestState = false;
  willPopState state = willPopState.decline;
  int a = 10;
  @override
  Widget build(BuildContext context) {
     Timer.periodic(Duration(seconds: 1), (e) {
      if (requestState) {
        state = willPopState.decline;
        requestState = false;
      }
    });
    return template(
        title: 'On Will Pop Scope',
        bodyWid: WillPopScope(
            onWillPop: () async {
              if (state == willPopState.decline) {
                state = willPopState.request;
                requestState = true;
                return false;
              }

              if (state == willPopState.request) {
                state = willPopState.access;
                requestState = false;
                return true;
              } 
                else return false;
              // true > back key is on
              // false > back key is off
            },
            child: ListView.builder(
                itemCount: a, itemBuilder: (_, a) => Container02(i: a))));
  }
}

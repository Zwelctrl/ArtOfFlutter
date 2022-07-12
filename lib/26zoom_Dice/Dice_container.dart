import 'dart:math';

import 'package:flutter/material.dart';

class Dice26zoom extends StatefulWidget {
  Dice26zoom({Key? key}) : super(key: key);

  @override
  State<Dice26zoom> createState() => _Dice26zoomState();
}

class _Dice26zoomState extends State<Dice26zoom> {
  final Random random = Random();
  int dice1 = 6;
  int dice2 = 6;

  Widget circle() {
    return Container(
      margin: EdgeInsets.all(5),
      width: 10,
      height: 10,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.red, boxShadow: [
        BoxShadow(
          color: Colors.red,
        )
      ]),
    );
  }

  Widget getDice(int count) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  blurRadius: 8,
                  color: Color.fromARGB(0, 0, 0, 1),
                  offset: Offset(-1, 1),
                  spreadRadius: 2,
                )
              ]),
        ),
        if (count <= 3) ...[
          Row(
            children: [
              for (int i = 0; i < count; i++) ...[
                circle(),
              ]
            ],
          )
        ] else if (count == 5) ...[
          Column(
            children: [
              SizedBox(
                width: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    circle(),
                    circle(),
                  ],
                ),
              ),
              Row(
                children: [circle()],
              ),
              SizedBox(
                width: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    circle(),
                    circle(),
                  ],
                ),
              )
            ],
          )
        ] else if (count == 4) ...[
          Column(
            children: [
              SizedBox(
                width: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 0; i < 2; i++) ...[
                      circle(),
                    ]
                  ],
                ),
              ),
              SizedBox(
                width: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 0; i < 2; i++) ...[
                      circle(),
                    ]
                  ],
                ),
              )
            ],
          )
        ] else if (count == 6) ...[
          Column(
            children: [
              SizedBox(
                width: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 0; i < 3; i++) ...[
                      circle(),
                    ],
                  ],
                ),
              ),
              SizedBox(
                width: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 0; i < 3; i++) ...[
                      circle(),
                    ]
                  ],
                ),
              )
            ],
          )
        ] else
          ...[]
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    print(random.nextInt(6));
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              getDice(dice1),
              getDice(dice2),
            ],
          ),
        ],
      ),
    );
  }
}

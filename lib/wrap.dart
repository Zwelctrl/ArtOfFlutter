import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/ScrollBuilder/scrollBuilders.dart';
import 'package:learn_flutter/template.dart';

class WrapExp extends StatelessWidget {
  const WrapExp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return template(
        title: 'Wrap Exp',
        bodyWid: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          child: Wrap(
            spacing: 30,
            runSpacing: 20,
            direction: Axis.horizontal,
            // verticalDirection: VerticalDirection.up,
            // alignment: WrapAlignment.center,
            // runAlignment: WrapAlignment.end,
            children: [
              for (int i = 0; i < 10; i++)
                SizedBox(width: 80, height: 100, child: Container02(i: i))
            ],
          ),
        ));
  }
}

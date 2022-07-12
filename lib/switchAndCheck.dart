import 'package:flutter/material.dart';

class SwitchAndCheckExp extends StatefulWidget {
  SwitchAndCheckExp({Key? key}) : super(key: key);

  @override
  State<SwitchAndCheckExp> createState() => _SwitchAndCheckExpState();
}

class _SwitchAndCheckExpState extends State<SwitchAndCheckExp> {
  bool switchvalue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch And Check'),
      ),
      body: Center(
        //switch
        // child: Switch(
        //   splashRadius: 10,
        //   activeColor: Colors.amber,
        //   activeTrackColor: Colors.black,
        //   inactiveThumbColor: Colors.blue,
        //   inactiveTrackColor: Colors.orange,
        //   value: switchvalue,
        //   onChanged: (e) {
        //     switchvalue = e;
        //     setState(() {});
        //   },
        // ),

        //checkbox
        child: Checkbox(
            value: switchvalue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            activeColor: Colors.red,
            checkColor: Colors.white,
            splashRadius: 20,
            onChanged: (e) {
              switchvalue = e!;
              setState(() {});
            }),
      ),
    );
  }
}

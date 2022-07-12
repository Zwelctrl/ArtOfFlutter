import 'package:flutter/material.dart';

class ButtonsExp extends StatelessWidget {
  const ButtonsExp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: Center(
        // elevated button
        // child: ElevatedButton(
        //   focusNode: FocusNode(),
        //   onPressed: () {},
        //   child: Text(
        //     'Add eefs f sfdsf sfs sefwer ',
        //     textScaleFactor: 3,
        //     textAlign: TextAlign.right,
        //     textDirection: TextDirection.rtl,
        //     maxLines: 3, // accepts only 3 lines of texts
        //     style: TextStyle(
        //       color: Colors.white,
        //       fontStyle: FontStyle.italic,
        //       fontWeight: FontWeight.bold,
        //       backgroundColor: Colors.purple,
        //       height: 10,
        //       letterSpacing: 2,
        //       wordSpacing: 3,
        //       decoration: TextDecoration.lineThrough,
        //       decorationThickness: 3,
        //       overflow: TextOverflow.fade,
        //     ),
        //   ),
        //   onLongPress: () {
        //     print('Long Press');
        //   },
        //   onHover: (e) {
        //     print(e);
        //   },
        //   onFocusChange: (a) {
        //     print(a);
        //   },
        //   style: ButtonStyle(
        //       alignment: Alignment.topCenter,
        //       mouseCursor: MaterialStateProperty.all(MouseCursor.uncontrolled),
        //       shape: MaterialStateProperty.all(RoundedRectangleBorder()),
        //       backgroundColor: MaterialStateProperty.all(Colors.amber),
        //       foregroundColor: MaterialStateProperty.all(Colors.blue),
        //       overlayColor: MaterialStateProperty.all(Colors.red),
        //       elevation: MaterialStateProperty.all(20),
        //       shadowColor: MaterialStateProperty.all(Colors.black),
        //       padding: MaterialStateProperty.all(EdgeInsets.only(top: 20)),
        //       minimumSize: MaterialStateProperty.all(Size(50, 20)),
        //       fixedSize: MaterialStateProperty.all(Size(30, 50)),
        //       side: MaterialStateProperty.all(BorderSide(color: Colors.red))),
        // ),

        // // Icon button
        // body: Center(
        //     child: IconButton(
        //   icon: Icon(Icons.heart_broken),
        //   iconSize: 70,
        //   splashColor: Colors.red,
        //   splashRadius: 50,
        //   onPressed: () {},
        //   disabledColor: Colors.cyan,
        // //   tooltip: 'My Heart is broken',
        // )),

        //outline button
        //     body: Center(
        //   child: OutlinedButton(
        //     onPressed: () {},
        //     child: Text(
        //       'Hello esers fsfsf e rsrser sr sdfd rtdt t t dtd td trt t rt esers fsfsf e rsrser sr sdfd rtdt t t dtd td trt t rtesers fsfsf e rsrser sr sdfd rtdt t t dtd td trt t rt ',
        //       textScaleFactor: 1,
        //       textAlign: TextAlign.right,
        //       textDirection: TextDirection.rtl,
        //       maxLines: 3, // accepts only 3 lines of texts
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontStyle: FontStyle.italic,
        //         fontWeight: FontWeight.bold,
        //         backgroundColor: Colors.purple,
        //         height: 5,
        //         letterSpacing: 2,
        //         wordSpacing: 3,
        //         decoration: TextDecoration.lineThrough,
        //         decorationThickness: 3,
        //         overflow: TextOverflow.fade,
        //       ),
        //     ),
        //   ),
        // ));

        //toggle button
        body: ToggleButtons(
      children: [Icon(Icons.add_a_photo), Icon(Icons.access_alarm)],
      isSelected: [
        true,
        true,
      ],
      direction: Axis.vertical,
      onPressed: (e) {},
    ));
  }
}

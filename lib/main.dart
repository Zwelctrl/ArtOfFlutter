import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:learn_flutter/21zoom.dart';
import 'package:learn_flutter/22zoom.dart';
import 'package:learn_flutter/26zoom_Dice/home1.dart';
import 'package:learn_flutter/buttons.dart';
import 'package:learn_flutter/card.dart';
import 'package:learn_flutter/container.dart';
import 'package:learn_flutter/buttons.dart';
import 'package:learn_flutter/20zoom.dart';
import 'package:learn_flutter/dropdownExp.dart';
import 'package:learn_flutter/image_search/view/service/apiService.dart';
import 'package:learn_flutter/inkWellAndGesture.dart';
import 'package:learn_flutter/radioExp.dart';
import 'package:learn_flutter/revision.dart';
import 'package:learn_flutter/rowAndColumn.dart';
import 'package:learn_flutter/screens/homepage.dart';
import 'package:learn_flutter/stack.dart';
import 'package:learn_flutter/switchAndCheck.dart';
import 'package:learn_flutter/test.dart';
import 'package:learn_flutter/text_field.dart';

import '26zoom_Dice/Dice_container.dart';

void main() {
  print('Start From Main');

  APIservice().availableDogs();
  // APIservice().getDog('https://dog.ceo/api/breeds/image/random');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Start from Home');
    return MaterialApp(
      //if andriod, Material App, If IOS, cupertino App
      // home: ContainerExp(),
      // home: ButtonsExp(),
      // home: Learn(),
      // home: CardExp(),
      // home: ProductCardExp(),
      // home: StackExp(),
      // home: CustomBTN(),
      // home: SwitchAndCheckExp(),
      // home: ProductCardExp(),
      // home: RowAndColumn(),
      // home: RadioExp(),
      // home: TestExp(),
      // home: DropdownExp(),
      // home: TextFieldExp(),
      // home: LoginFormExp(),
      // home: Dice26zoom(),
      // home: Counter(),
      // home: RevisionExp(),
      // home: HomePage(),
      home: OnePage(),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Counter();
  }
}

class _Counter extends State {
  int i = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Stateful'),
        backgroundColor: Colors.redAccent,
        foregroundColor: Color.fromARGB(236, 255, 255, 255),
        bottom: Tab(child: Text('Random Tab')),
        //flexible space is the entire appBar
        flexibleSpace: Tab(
          child: Text('normal'),
        ),
        actionsIconTheme: IconThemeData(
          color: Colors.deepOrangeAccent,
        ),
        textTheme: TextTheme(),
        iconTheme: IconThemeData(
          color: Colors.amber,
        ),
        brightness: Brightness.dark,
        elevation: 5,
        shadowColor: Colors.yellow,
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          size: 40,
          // color: Colors.white,
        ),
        actions: [
          Icon(CupertinoIcons.add),
          Icon(CupertinoIcons.airplane),
          Icon(Icons.airline_seat_recline_extra),
        ],
      ),
      body: Container(
        child: Center(
          child: Text('$i'),
        ),
        color: Colors.grey,
      ),
      floatingActionButton: FloatingActionButton(
        hoverColor: Colors.red,
        splashColor: Colors.redAccent,
        elevation: 10,
        highlightElevation: 0,
        tooltip: 'Add Value',
        // mini: true,

        //SHAPE
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.horizontal(
        //     left: Radius.circular(10),
        //     right: Radius.circular(5),
        //   ),
        // ),

        //or

        // shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.all(Radius.circular(50))),

        //or

        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22), topRight: Radius.circular(33))),

        // shape: Border(
        //   top: BorderSide(color: Colors.black, width: 7),
        //   right: BorderSide(color: Colors.white, width: 7),
        //   bottom:
        //       BorderSide(color: Colors.red, width: 7, style: BorderStyle.none),
        //   left: BorderSide(
        //       color: Colors.amber, width: 7, style: BorderStyle.solid),
        // ),
        onPressed: () {
          i++;
          setState(() {});
          print(i);
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: Container(
        height: 50,
        child: AppBar(),
      ),
    );
  }
}


// april 19 zoom 1.12.23
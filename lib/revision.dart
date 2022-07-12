import 'package:flutter/material.dart';

class RevisionExp extends StatefulWidget {
  RevisionExp({Key? key}) : super(key: key);

  @override
  State<RevisionExp> createState() => _RevisionExpState();
}

class _RevisionExpState extends State<RevisionExp> {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey<ScaffoldState>();

  String? gpVal;

  bool SwitchState = true;

  void func(String? a) {
    setState(() {
      gpVal = a!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      appBar: AppBar(
        title: Text('Drawer'),
        leading: IconButton(
            onPressed: () {
              scaffoldState.currentState?.openDrawer();
              // scaffoldState.currentState?.openEndDrawer();
            },
            icon: Icon(Icons.abc_outlined)),
      ),
      drawer: Container(
        color: Colors.blue,
        width: MediaQuery.of(context).size.width * 0.6,
      ),
      onDrawerChanged: (e) {
        print(e);
      },
      // drawerScrimColor: Colors.red[50],
      endDrawer: Container(
        color: Colors.red,
        width: MediaQuery.of(context).size.width * 0.25,
      ),
      onEndDrawerChanged: (e) {},
    );
  }
}

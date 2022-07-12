import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/aboutpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              //push
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => AboutPage())));
            },
            child: Text('Go ot About Page')),
      ),
    );
  }
}

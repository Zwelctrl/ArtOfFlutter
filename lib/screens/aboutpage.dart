import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/detailPage.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Text('AboutPage'),
        // leading: Icon(Icons.back_hand),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              //pushAndRemoveUntil (remove all the route created)
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (e) => DetailPage()),
                  (route) => false); // if false, u cant back

              //pushReplacement (replace previous page with homepage)
              // Navigator.of(context).pushReplacement(
              //     MaterialPageRoute(
              //       builder: (context) => DetailPage()
              //       ));
            },
            child: Text('Go To Detail Page')),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
        leading: IconButton(
            onPressed: () {
              // Navigator.of(context).pop();
              print(Navigator.of(context).canPop());
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {}, child: Text('Go Anywhere')),
      ),
    );
  }
}

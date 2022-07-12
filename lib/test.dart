import 'package:flutter/material.dart';

String val = '';

void func(String? a) {
  val = a!;
  
}

class TestExp extends StatelessWidget {
  const TestExp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testing Screen'),
      ),
      body: Center(
        child: Row(
          children: [Radio(value: 'm', groupValue: val, onChanged: (e) {})],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DropdownExp extends StatefulWidget {
  DropdownExp({Key? key}) : super(key: key);

  @override
  State<DropdownExp> createState() => _DropdownExpState();
}

class _DropdownExpState extends State<DropdownExp> {
  String? _user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropdownExp'),
      ),
      body: Center(
        child: DropdownButton(
            borderRadius: BorderRadius.circular(30),
            dropdownColor: Colors.lime,
            menuMaxHeight: 300,
            isDense: false,
            icon: Icon(Icons.favorite),
            hint: Text(
              'Select Your Country',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            value: _user,
            items: [
              DropdownMenuItem(
                onTap: () {
                  print('On Tap');
                },
                enabled: true,
                child: Text('A Country'),
                value: 'a',
              ),
              DropdownMenuItem(
                enabled: false,
                child: Text('B Country'),
                value: 'b',
              ),
              DropdownMenuItem(
                child: Text('C Country'),
                value: 'c',
              ),
            ],
            onChanged: (String? e) {
              _user = e!;
              setState(() {});
            }),
      ),
    );
  }
}

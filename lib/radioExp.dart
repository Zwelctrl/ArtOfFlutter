import 'package:flutter/material.dart';

class RadioExp extends StatefulWidget {
  RadioExp({Key? key}) : super(key: key);

  @override
  State<RadioExp> createState() => _RadioExpState();
}

class _RadioExpState extends State<RadioExp> {
  String _user = '';

  void _func(String? a) {
    _user = a!;
    print(a);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioExp'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // value == Radio's value ,  groupValue == user's selected value
            // when value == groupvalue , radio is active
            Radio(
              value: 'm',
              groupValue: _user,
              onChanged: _func,
              activeColor: Colors.red,
              splashRadius: 20,
              overlayColor: MaterialStateProperty.all(Colors.amber),
              toggleable: true,
            ),
            Radio(value: 'f', groupValue: _user, onChanged: _func),
            Radio(value: 'n', groupValue: _user, onChanged: _func),
          ],
        ),
      ),
    );
  }
}

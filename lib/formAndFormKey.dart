import 'package:flutter/material.dart';

class FormKeyExp extends StatefulWidget {
  FormKeyExp({Key? key}) : super(key: key);

  @override
  State<FormKeyExp> createState() => _FormKeyExpState();
}

GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _FormKeyExpState extends State<FormKeyExp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormKey'),
      ),
      body: (
         Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onWillPop: () {
              print('Back key triggered');
              return Future.value(false); //if true, it will back
            },
            child: Column(
              children: [
                TextFormField(
                  validator: (e) {
                    return e == 'mg mg' ? null : 'wrong answer';
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState?.validate() == true) {
                        print('Success');
                      } else {
                        print('Error');
                      }
                      ;
                    },
                    child: Text('Login'))
              ],
            ))
      ),
    );
  }
}

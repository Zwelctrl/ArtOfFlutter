import 'package:flutter/material.dart';

class TextFieldExp extends StatefulWidget {
  TextFieldExp({Key? key}) : super(key: key);

  @override
  State<TextFieldExp> createState() => _TextFieldExpState();
}

class _TextFieldExpState extends State<TextFieldExp> {
  // TextEditiingController is the reciever, holder of the text we input
  TextEditingController controller = TextEditingController();
  String? a = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(controller.text),
              Container(
                width: double.infinity,
                height: 100,
                child: TextField(
                  cursorColor: Colors.red,
                  expands: true,
                  // minLines: 2,
                  maxLines: null,
                  toolbarOptions: ToolbarOptions(
                    copy: true,
                    selectAll: true,
                  ),

                  controller: controller,

                  decoration: InputDecoration(
                    enabled: true,
                    filled: false,
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber)),
                    icon: Icon(Icons.search),
                    labelText: 'Please Input your text',
                    floatingLabelStyle: TextStyle(
                      color: Colors.red,
                    ),
                    hintText: 'Just type slowly',
                    helperText: 'C\' mon throw it',
                    errorText: 'Error is tak nay tl',
                    contentPadding: EdgeInsets.only(left: 10),
                    counter: Text('1'),

                    // prefix: Icon(
                    //   Icons.abc,
                    //   color: Colors.red,
                    // ),
                    // prefix shows only when it's selected

                    prefixIcon: Icon(
                      Icons.access_alarm,
                      color: Colors.grey,
                    ),
                    // prefix icon shows icon

                    suffix: Icon(
                      Icons.delete,
                      color: Colors.black,
                    ),

                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.red,
                    ),
                  ),

                  //onEditingComplete
                  onEditingComplete: () {
                    print('Editing Complete');
                    setState(() {});
                  },

                  //onSubmitted
                  onSubmitted: (e) {
                    print('$e is submitted');
                  },
                  //onchanged
                  onChanged: (e) {
                    a = e;
                    print('On Changed $e');
                    // print(a);
                    print(controller.text);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

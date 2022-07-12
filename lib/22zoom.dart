import 'package:flutter/material.dart';
import 'package:starlight_utils/starlight_utils.dart';

class LoginFormExp extends StatefulWidget {
  LoginFormExp({Key? key}) : super(key: key);

  @override
  State<LoginFormExp> createState() => _LoginFormExpState();
}

class _LoginFormExpState extends State<LoginFormExp> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  Widget positionFunc(String name) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 10, left: 5),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey),
          ),
        ),
        child: Text(
          '${name.toUpperCase()} Positions',
          style: TextStyle(color: Colors.black45),
        ));
  }

  Widget selectedPostion(String name) {
    return Container(
      width: double.infinity,
      height: 50,
      color: Colors.amber,
      alignment: Alignment.centerLeft,
      child: Text(
        '${name.toUpperCase()} Positions',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  bool agree = false;
  List<String> lili = ['e', 'x', 'p', 's', 'w'];
  List<String> genders = ['Male', 'Female'];
  String? gender;
  String? x;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  FocusNode userNameF = FocusNode();
  FocusNode emailF = FocusNode();
  FocusNode passF = FocusNode();
  FocusNode dropF = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Form'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Form(
                key: formkey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      focusNode: userNameF,
                      onEditingComplete: emailF.requestFocus,
                      controller: controller1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        validator: (value) {
                          return value?.isEmail == true
                              ? null
                              : 'Invalid Email';
                        },
                        onEditingComplete: passF.requestFocus,
                        focusNode: emailF,
                        controller: controller2,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        return value?.isStrongPassword;
                      },
                      onEditingComplete: dropF.requestFocus,
                      focusNode: passF,
                      controller: controller3,
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 5),
                        child: DropdownButton(
                          focusNode: dropF,
                          value: x,
                          selectedItemBuilder: (e) {
                            return lili.map((e) => selectedPostion(e)).toList();
                          },
                          // selectedItemBuilder: (_) {
                          //   return [
                          //     if (x != null)
                          //       Container(
                          //         width: double.infinity,
                          //         height: 15,
                          //         color: Colors.amber,
                          //         child: Text('First'),
                          //       ),
                          //     Container(
                          //       width: double.infinity,
                          //       height: 15,
                          //       color: Colors.blue,
                          //       child: Text('Second'),
                          //     ),
                          //     Container(
                          //       width: double.infinity,
                          //       height: 15,
                          //       color: Colors.cyan,
                          //       child: Text('Third'),
                          //     )
                          //   ];
                          // },

                          // underline: SizedBox(),
                          isExpanded: true,
                          hint: Text('Choose Position'),
                          borderRadius: BorderRadius.circular(10),

                          items: lili
                              .map((e) => DropdownMenuItem(
                                    child: positionFunc(e),
                                    value: e,
                                  ))
                              .toList(),
                          // DropdownMenuItem(
                          //   child: positionFunc('First Item1'),
                          //   value: 'm',
                          // ),
                          // DropdownMenuItem(
                          //   child: positionFunc('Second Item'),
                          //   value: 'n',
                          // ),
                          // DropdownMenuItem(
                          //   child: positionFunc('Third Item'),
                          //   value: 'f',
                          // ),

                          onChanged: (String? a) {
                            // နှိပ်လိုက်တဲ့ အချိန်မှာ နှိပ်တဲ့ item ရဲ့ value က parameter ထဲ ၀င်သွားတယ်
                            x = a!;
                            setState(() {});
                            print('On Change $a');
                          },
                          onTap: () {
                            print('On Tap');
                          },
                        ),
                      ),
                    ),
                    Row(
                      children: genders
                          .map((e) => Row(
                                children: [
                                  Radio<String>(
                                      value: e,
                                      groupValue: gender,
                                      onChanged: (e) {
                                        gender = e;
                                        setState(() {});
                                      }),
                                  Text(e.toUpperCase()),
                                ],
                              ))
                          .toList(),
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: agree,
                            onChanged: (a) {
                              agree = a!;
                              print('$a');
                              setState(() {});
                            }),
                        Text("I Agree Blah blah")
                      ],
                    ),
                    Container(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text('Register')))
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

//40:59
//List, Map , Widget ပေါင်းပြီး function တွေပြန်လုပ်ရန်

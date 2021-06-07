import 'package:flutter/material.dart';
import 'custom_widget.dart';
import 'package:form_field_validator/form_field_validator.dart';

class UserRegister extends StatefulWidget {
  @override
  _UserRegisterState createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister> {
  final formkey = GlobalKey<FormState>();
  String password;

  final emailvalidator = MultiValidator([
    EmailValidator(errorText: 'Enter Valid Email'),
    RequiredValidator(errorText: 'Email is Required'),
  ]);

  final passwordvalidator = MultiValidator([
    RequiredValidator(errorText: 'Password is required'),
    MinLengthValidator(8, errorText: 'Password mmust be at least 8 digit')
  ]);

  final mobilevalidator = MultiValidator([
    PatternValidator('([6-9]\d{9})', errorText: 'Mobile no must be 10 digit'),
 RequiredValidator(errorText: 'Password is required'),
  ]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: formkey,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              SafeArea(
                child: Container(
                  width: 178,
                  height: 43,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/logo.png'))),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'REGISTER',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  validator: mobilevalidator,
                  decoration: InputDecoration(
                    hintText: 'Mobile No',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  validator: emailvalidator,
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  onChanged: (val) {
                    password = val;
                  },
                  validator: passwordvalidator,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  validator: (val) {
                    return MatchValidator(errorText: 'Password do not match')
                        .validateMatch(val, password);
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Conform Password',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Pincode',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Address',
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Cusbutton(
                text: 'REGISTER',
                onPressed: () {
                  if (formkey.currentState.validate()) {
                    print('validated');
                  } else {
                    print('not calidated');
                  }
                },
                width: 0.7,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already Register?',
                    style: TextStyle(fontSize: 17.0),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('d');
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 17.0, color: Colors.blue),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'custom_widget.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Form(
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
                height: 60,
              ),
              Text(
                'LOGIN',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Email', icon: Icon(Icons.email)),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password', icon: Icon(Icons.lock)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Cusbutton(
                text: 'LOGIN',
                onPressed: () {
                  if (formkey.currentState.validate()) {
                    print('darshak');
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
                    'Not Register?',
                    style: TextStyle(fontSize: 17.0),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Register',
                      style: TextStyle(fontSize: 20.0, color: Colors.blue),
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

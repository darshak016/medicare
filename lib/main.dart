import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medicare/confApp.dart';
import 'package:medicare/doctorinfo.dart';
import 'package:medicare/registeruser.dart';


import 'DoctorRegister.dart';
import 'askuser.dart';
import 'doctorlist.dart';
import 'home.dart';
import 'loginuser.dart';
import 'confApp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Splashscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Home()))
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 178,
            height: 43,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/logo.png'))),
          ),
          SizedBox(
            height: 20,
          ),
          CircularProgressIndicator(
            color: Colors.blue,
          ),
        ],
      )),
    );
  }
}

import 'dart:ui';
import 'custom_widget.dart';
import 'package:flutter/material.dart';

class Askuser extends StatefulWidget {
  @override
  _AskuserState createState() => _AskuserState();
}

class _AskuserState extends State<Askuser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: (MediaQuery.of(context).size.height),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
          image: DecorationImage(
            image: AssetImage(
              'assets/doctor1.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 178,
                  height: 43,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/logo.png'))),
                ),
                SizedBox(
                  height: 40,
                ),
                Cusbutton(
                text: 'LOGIN',
                onPressed: () {}),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Cusbutton(
                  text: 'REGISTER',
                  onPressed: () {}),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  child: Text(
                    'Register as Doctor',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Skip',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'custom_widget.dart';

class ConfApp extends StatefulWidget {
  const ConfApp({Key key}) : super(key: key);

  @override
  _ConfAppState createState() => _ConfAppState();
}

class _ConfAppState extends State<ConfApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/check.png'),
              backgroundColor: Colors.white,
              radius: 50,
            ),
            SizedBox(
              height: 30,
            ),
            Textwidget(text: 'Your Appointment has been requested', fsize: 22),
            Textwidget(text: 'Successfully', fsize: 27),
            SizedBox(
              height: 30,
            ),
            Textwidget(
                text: 'Doctor will respond to your Appointment', fsize: 22),
            Textwidget(text: 'soon', fsize: 23),
            SizedBox(
              height: 15,
            ),
            Textwidget(text: 'Booking Reference Id :', fsize: 22),
            Textwidget(text: '543334566', fsize: 22),
            SizedBox(
              height: 15,
            ),
            Textwidget(text: 'Time', fsize: 22),
            Textwidget(text: 'time here', fsize: 22),
            SizedBox(
              height: 15,
            ),
            Textwidget(text: 'dr name', fsize: 22),
            SizedBox(
              height: 15,
            ),
            Textwidget(text: 'Address', fsize: 22),
            Textwidget(text: 'Address here', fsize: 22),
            SizedBox(
              height: 20,
            ),
            Cusbutton(
                text: 'My Appointment',
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

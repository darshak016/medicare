import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splashscreen extends StatelessWidget {
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
                image: DecorationImage(image: AssetImage('assets/logo.png'))
              ),
            ),
            SizedBox(height: 20,),
            SpinKitCircle(color: Colors.black,)
          ],
        )
      ),
    );
  }
}

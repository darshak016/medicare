import 'package:flutter/material.dart';

class Textwidget extends StatelessWidget {
  final String text;
  final double fsize;
  Textwidget({required this.text, required this.fsize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.blue[800],
          fontWeight: FontWeight.bold,
          fontSize: fsize),
    );
  }
}

class Cusbutton extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;
  Cusbutton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width) * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [Color(0xff374ABE), Color(0xff64B6FF)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

Container createDocWidget(String imgName, String docName) {
  return Container(
    child: InkWell(
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          color: Colors.white,
        ),
        child: Container(
          padding: EdgeInsets.all(7),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                width: 70,
                height: 90,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/docprofile/$imgName'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Dr. $docName",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 250,
                    height: 50,
                    child: Text(
                      "A brief about the doctor to be added here. This is more like an introduction about the doctor",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      overflow: TextOverflow.clip,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}

// Container categoryContainer(String imgName, String title, VoidCallback onPressed) {
//   return Container(
//     width: 130,
//     child: Column(
//       children: <Widget>[
//         GestureDetector(
//           onTap: onPressed,
//           child: CircleAvatar(
//             backgroundColor: Colors.blue,
//             backgroundImage: AssetImage('assets/$imgName'),
//             radius: 50,
//           ),
//         ),
//         Text(
//           "$title",
//           style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17),
//         )
//       ],
//     ),
//   );
// }

class Doctorlist extends StatelessWidget {
  final String title;
  final String imgName;
   final GestureTapCallback onTap;
  Doctorlist({required this.title, required this.imgName,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: <Widget>[
            CircleAvatar(
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage('assets/$imgName'),
                radius: 50,
              ),
            
            Text(
              "$title",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17),
            )
          ],
        ),
      ),
    );
  }
}

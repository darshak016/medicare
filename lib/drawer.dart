import 'package:flutter/material.dart';
import 'package:medicare/doctorinfo.dart';
import 'package:medicare/doctorlist.dart';

import 'home.dart';

class CusDrawer extends StatefulWidget {
  const CusDrawer({Key key}) : super(key: key);

  @override
  _CusDrawerState createState() => _CusDrawerState();
}

class _CusDrawerState extends State<CusDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.blue[800],
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            buidheader(
              imagepath: 'assets/logo.png',
              name: 'Darshak',
              email: 'darshak@gmail.com',
            ),
            Divider(
              color: Colors.white,
            ),
            SizedBox(
              height: 24,
            ),
            buildMenuitem(
              text: 'Home',
              icon: Icons.people,
              onTap: () => selectitem(context, 0),
            ),
            buildMenuitem(
              text: 'Doctors',
              icon: Icons.people,
              onTap: () => selectitem(context, 1),
            ),
            buildMenuitem(
              text: 'Doctorinfo',
              icon: Icons.people,
              onTap: () => selectitem(context, 2),
            ),
            SizedBox(
              height: 24,
            ),
            Divider(
              color: Colors.white,
            ),
            SizedBox(
              height: 24,
            ),
            buildMenuitem(
              text: 'People',
              icon: Icons.people,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuitem({String text, IconData icon, VoidCallback onTap}) {
    final color = Colors.white;
    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      onTap: onTap,
    );
  }

  void selectitem(BuildContext context, int i) {
    Navigator.of(context).pop();
    switch (i) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DoctorList(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Doctorinfo(),
          ),
        );
        break;
    }
  }

  buidheader({String imagepath, String name, String email}) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 40, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imagepath),
            radius: 40,
          ),
          Text(name,style: TextStyle(color: Colors.white,fontSize: 25),),
          Text(email,style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}

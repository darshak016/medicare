import 'package:flutter/material.dart';
import 'custom_widget.dart';
import 'loginuser.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String dropdownitem = 'Surat';
  List city = ['Surat', 'Ahamdabad', 'Anand', 'vadodara'];

  List doctortype = [
    'Physician',
    'Dermetologist',
    'dsdfsdf',
    'dsgfgdfg',
    'sdfg',
    'fthfb',
    'fhgdgd',
    'dfgdfbfgn',
    'ghfgdfgd'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        toolbarHeight: 60,
        title: Text(
          'Medicare',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DropdownButtonHideUnderline(
              child: DropdownButton(
                elevation: 3,
                iconSize: 20.0,
                iconEnabledColor: Colors.white,
                value: dropdownitem,
                items: city.map<DropdownMenuItem<String>>((valueitem) {
                  return DropdownMenuItem(
                    value: valueitem,
                    child: Text(valueitem),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    dropdownitem = value.toString();
                  });
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'WELCOME',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          fontFamily: 'NotoSansJP'),
                    ),
                    Text(
                      'BOOK YOUR APPOINTMENT',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          fontFamily: 'NotoSansJP'),
                    ),
                  ],
                ),
              ),
            ),
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: doctortype.length,
            //     itemBuilder: (context, index) {
            //       return ListTile(
            //         title: Text('${doctortype[index]}'),
            //       );
            //     },
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(left: 14, right: 10, top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Select a Doctor or Category",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    margin: EdgeInsets.only(top: 10),
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Doctorlist(
                            title: 'dfsd',
                            imgName: 'doctor.jpg',
                            onTap: () {
                               Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Login()),
  );
                            })
                      ],
                    ),
                  ),
                  // Text("Chief Doctors", style: TextStyle(
                  //   fontSize: 25,
                  //   fontWeight: FontWeight.w800,
                  // ),),
                  // SizedBox(height: 20,),
                  // Container(
                  //   height: 400,
                  //   child: SingleChildScrollView(
                  //     physics: BouncingScrollPhysics(),
                  //     child: Column(
                  //       children: <Widget>[
                  //         createDocWidget("doc1.png", "Susan Thomas"),
                  //         createDocWidget("doc2.png", "Paul Barbara"),
                  //         createDocWidget("doc3.png", "Nancy Williams"),
                  //         createDocWidget("doc1.png", "Susan Thomas"),
                  //         createDocWidget("doc2.png", "Paul Barbara"),
                  //         createDocWidget("doc3.png", "Nancy Williams"),
                  //       ],
                  //     ),
                  //   ),
                  // )
                  InkWell(
                    onTap: () {
                      print('dsfs');
                    },
                    child: Container(
                      height: 444,
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    height: 444,
                    color: Colors.blue,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add_sharp),
            label: 'Notification',
          ),
        ],
      ),
    );
  }
}

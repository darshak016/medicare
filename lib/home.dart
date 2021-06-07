import 'package:flutter/material.dart';
import 'custom_widget.dart';
import 'loginuser.dart';
import 'drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String dropdownitem = 'Surat';
  List city = ['Surat', 'Ahamdabad', 'Anand', 'vadodara'];
  String _chosenValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CusDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
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
            // DropdownButtonHideUnderline(
            //   child: DropdownButton(
            //     elevation: 3,
            //     iconSize: 20.0,
            //     iconEnabledColor: Colors.white,
            //     value: dropdownitem,
            //     items: city.map<DropdownMenuItem<String>>((valueitem) {
            //       return DropdownMenuItem(
            //         value: valueitem,
            //         child: Text(valueitem),
            //       );
            //     }).toList(),
            //     onChanged: (value) {
            //       setState(() {
            //         dropdownitem = value.toString();
            //       });
            //     },
            //   ),
            // ),
            DropdownButton<String>(
              focusColor: Colors.white,
              value: _chosenValue,
              //elevation: 5,
              style: TextStyle(color: Colors.white),
              iconEnabledColor: Colors.black,
              items: <String>[
                'Ahamdabad',
                'Anand',
                'Surat',
                'Rajkot',
                'Navsari',
                'Bhavnagar',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                );
              }).toList(),
              hint: Text(
                "Please choose City",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              onChanged: (String value) {
                setState(() {
                  _chosenValue = value;
                });
              },
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                width: (MediaQuery.of(context).size.width) * 0.9,
                height: 235,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Stay Home,',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Stay Safe,',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 190,
                      child: Image(image: AssetImage('assets/banner.png')),
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //   width: double.infinity,
            //   height: 150,
            //   margin: EdgeInsets.all(10),
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //     borderRadius: BorderRadius.circular(10),
            //     gradient: LinearGradient(
            //       colors: [Color(0xff374ABE), Color(0xff64B6FF)],
            //       begin: Alignment.topCenter,
            //       end: Alignment.bottomCenter,
            //     ),
            //   ),
            //   child: Center(
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Text(
            //           'WELCOME',
            //           textAlign: TextAlign.left,
            //           style: TextStyle(
            //               color: Colors.white,
            //               fontWeight: FontWeight.bold,
            //               fontSize: 30.0,
            //               fontFamily: 'NotoSansJP'),
            //         ),
            //         Text(
            //           'BOOK YOUR APPOINTMENT',
            //           textAlign: TextAlign.left,
            //           style: TextStyle(
            //               color: Colors.white,
            //               fontWeight: FontWeight.bold,
            //               fontSize: 25.0,
            //               fontFamily: 'NotoSansJP'),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
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
                    height: 130,
                    margin: EdgeInsets.only(top: 10),
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Doctorlist(
                            title: 'Cardiologist',
                            imgName: 'cardiology.png',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            }),
                        Doctorlist(
                            title: 'Dermatologist',
                            imgName: 'Dermatology.png',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            }),
                        Doctorlist(
                            title: 'Gastroenterologist',
                            imgName: 'gastroenterology.png',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            }),
                        Doctorlist(
                            title: 'Neurologist',
                            imgName: 'neurology.png',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            }),
                        Doctorlist(
                            title: 'Pathologist',
                            imgName: 'pathology.png',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            }),
                        Doctorlist(
                            title: 'Psychiatsist',
                            imgName: 'psychiatrist.png',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            }),
                        Doctorlist(
                            title: 'Gynecologist',
                            imgName: 'gynecology.png',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            }),
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
                ],
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.notification_add_sharp),
      //       label: 'Notification',
      //     ),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         
        },
        child: Icon(Icons.notifications_active_rounded),
      ),
    );
  }
}

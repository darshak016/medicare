import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List city = ['Surat', 'Ahamdabad', 'Anand', 'vadodara'];
  List doctortype = [
    'Physician',
    'Dermetologist',
    'fgdfd',
    'sdsdf',
    'dgdsfsd',
    'sddfd',
    'zdsd'
  ];
  String dropdownitem = 'Surat';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 60,
        title: DropdownButtonHideUnderline(
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
      ),
      body: Column(
        children: [
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
          Expanded(
            child: ListView.builder(
              itemCount: doctortype.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${doctortype[index]}'),
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        ],
      ),
    );
  }
}

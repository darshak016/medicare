import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'custom_widget.dart';

class Doctorinfo extends StatefulWidget {
  const Doctorinfo({Key key}) : super(key: key);

  @override
  _DoctorinfoState createState() => _DoctorinfoState();
}

class _DoctorinfoState extends State<Doctorinfo> {
  final List imagesList = [
    'assets/check.png',
    'assets/doctor.jpg',
    'assets/doctor1.jpg',
    'assets/logo.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              // items: imagesList
              //     .map((item) => Center(
              //           child: Image.asset(
              //             '$item',
              //             fit: BoxFit.cover,
              //           ),
              //         ))
              //     .toList(),
              items: imagesList
                  .map((item) => Container(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              child: Stack(
                                children: <Widget>[
                                  // Image.network(item,
                                  //     fit: BoxFit.cover, width: 1000.0),
                                  Image.asset(
                                    '$item',
                                    fit: BoxFit.cover,
                                    width: 1000,
                                  ),
                                  Positioned(
                                    bottom: 0.0,
                                    left: 0.0,
                                    right: 0.0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color.fromARGB(50, 0, 0, 0),
                                            Color.fromARGB(0, 0, 0, 0)
                                          ],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                        ),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 20.0),
                                      // child: Text(
                                      //   'No. ${imagesList.indexOf(item)} image',
                                      //   style: TextStyle(
                                      //     color: Colors.white,
                                      //     fontSize: 20.0,
                                      //     fontWeight: FontWeight.bold,
                                      //   ),
                                      // ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ))
                  .toList(),
              // options: CarouselOptions(
              //   height: 400,
              //   aspectRatio: 16 / 9,
              //   viewportFraction: 0.8,
              //   initialPage: 0,
              //   enableInfiniteScroll: true,
              //   reverse: false,
              //   autoPlay: false,
              //   enlargeCenterPage: true,
              //   scrollDirection: Axis.horizontal,
              // ),
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/doctor.jpg'),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Doctor name',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        'Speciality',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        'Qualification',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: Icon(
                    Icons.assignment_ind_rounded,
                    size: 30,
                  ),
                ),
                Text(
                  'Experience',
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: Icon(
                    Icons.location_on,
                    size: 30,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Clinic name',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Address line'),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Text(
                    '\u{20B9}',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Text(
                  ' ' '\u{20B9}400  ${'Consultation Fees'}',
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: Icon(
                    Icons.star_border,
                    size: 30,
                  ),
                ),
                Text(
                  '55 Reviews',
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
            
            SizedBox(
              height: 20,
            ),
            Cusbutton(text: 'Book Appointment', onPressed: () {},width: 0.7,),
          ],
        ),
      ),
    );
  }
}

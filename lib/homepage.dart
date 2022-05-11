import 'package:dokterian/account.dart';
import 'package:dokterian/const.dart';
import 'package:dokterian/message.dart';
import 'package:dokterian/schedule.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double widthnavbar = 65.33;
  double heightnavbar = 48;
  int pageIndex = 0;
  Color colortransp = Colors.transparent;
  BorderRadiusGeometry bordrad = BorderRadius.circular(0);
  final pages = [
    const HomePage(),
    const Schedule(),
    const Message(),
    const Account(),
  ];

  List<Route> myRoute = [
    MaterialPageRoute(builder: (_) => HomePage()),
    MaterialPageRoute(builder: (_) => Schedule()),
    MaterialPageRoute(builder: (_) => Message()),
    MaterialPageRoute(builder: (_) => Account())
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 253, 250, 250),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //APPBAR TOP
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, ',
                            style: TextStyle(
                                color: Color(0xff8696BB), fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Hi James',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0D1B34),
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/Group.jpg'),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  //Doctor Box
                  Container(
                    width: 327,
                    height: 138,
                    decoration: BoxDecoration(
                        color: Color(0xff4894FE),
                        borderRadius: BorderRadius.circular(13)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          //Top Frame
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 48,
                                        height: 48,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'images/drimran.jpg')),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Dr. Imran Syahir',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Text(
                                            'General Doctor',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.0),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          ),
    
                          SizedBox(
                            height: 4,
                          ),
    
                          Divider(
                            color: Colors.white.withOpacity(0.3),
                            indent: 12,
                            endIndent: 12,
                          ),
    
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                //Date Container
    
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.date_range,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Sunday, 12 June',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13.5),
                                      )
                                    ],
                                  ),
                                ),
    
                                //time
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.watch_later_outlined,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '11:00 - 12:00 AM',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13.5),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
    
                  //search text field
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 327,
                      height: 56,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12),
                          border: InputBorder.none,
                          hintText: 'Search doctor or health issue',
                          hintStyle:
                              TextStyle(fontSize: 17, color: Color(0xff8696BB)),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 35,
                            color: Color(0xff8696BB),
                          ),
                        ),
                      ),
                    ),
                  ),
    
                  SizedBox(
                    height: 10,
                  ),
    
                  //Menu bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MenuBar(Icons.wb_sunny_outlined, 'Covid 19'),
                      MenuBar(Icons.health_and_safety, 'Doctor'),
                      MenuBar(Icons.medication, 'Medicine'),
                      MenuBar(Icons.local_hospital, 'Hospital'),
                    ],
                  ),
    
                  Text(
                    'Near Doctor',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      NearDoctorCard(
                        photoname: 'images/drjoseph.jpg',
                        doctorname: 'Dr. Joseph Brostito',
                        type: 'Dental Specialist',
                        reviews: '4,8 (120 reviews)',
                        kilometers: '1,2 KM',
                        opentime: 'Open at 17:00',
                      ),
                      SizedBox(height: 20,),
                      NearDoctorCard(
                        photoname: 'images/drjoseph.jpg',
                        doctorname: 'Dr. Joseph Brostito',
                        type: 'Dental Specialist',
                        reviews: '4,8 (120 reviews)',
                        kilometers: '1,2 KM',
                        opentime: 'Open at 17:00',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BuildNavBar(context)),
    );
  }

  // ignore: non_constant_identifier_names
  Container BuildNavBar(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        border: Border(
            top: BorderSide(width: 0.5, color: greycolor.withOpacity(0.4))),
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buttonnavbar(0, 'Home', Icons.house_outlined),
          buttonnavbar(1, 'Schedule', Icons.calendar_month_outlined),
          buttonnavbar(2, 'Message', Icons.message_outlined),
          buttonnavbar(3, 'Account', Icons.person),
        ],
      ),
    );
  }

  GestureDetector buttonnavbar(int index, String namemenu, IconData iconname) {
    return GestureDetector(
      onTap: () {
        setState(() {
          pageIndex == index;
         
          Navigator.of(context).pushReplacement(myRoute[index]);
        });
      },
      child: AnimatedContainer(
        width: pageIndex == index ? 95 : widthnavbar,
        height: heightnavbar,
        duration: Duration(seconds: 1),
        decoration: BoxDecoration(
          color: pageIndex == index ? lightblue : colortransp,
          borderRadius:
              pageIndex == index ? BorderRadius.circular(20) : bordrad,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              iconname,
              color: pageIndex == index ? bluecolor : greycolor,
              size: 30,
            ),
            Text(
              pageIndex == index ? namemenu : '',
              style: TextStyle(
                  fontSize: 16,
                  color: pageIndex == index ? bluecolor : greycolor,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector MenuBar(IconData nameicon, String menuname) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 72,
        height: 103,
        decoration: BoxDecoration(
            color: Color(0xffFAFAFA), borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              nameicon,
              color: Color(0xff4894FE),
              size: 28,
            ),
            Text(
              menuname,
              style: TextStyle(fontSize: 15.0, color: Color(0xff8696BB)),
            )
          ],
        ),
      ),
    );
  }
}

class NearDoctorCard extends StatelessWidget {
  final String kilometers;
  final String photoname;
  final String doctorname;
  final String type;
  final String reviews;
  final String opentime;
  const NearDoctorCard({
    Key? key,
    required this.kilometers,
    required this.doctorname,
    required this.type,
    required this.reviews,
    required this.opentime,
    required this.photoname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 138,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(13)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //Top Frame
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            image:
                                DecorationImage(image: AssetImage(photoname)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              doctorname,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              type,
                              style:
                                  TextStyle(color: greycolor, fontSize: 14.0),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: greycolor,
                      ),
                      Text(
                        kilometers,
                        style: TextStyle(color: greycolor, fontSize: 16),
                      )
                    ],
                  )
                ],
              ),
            ),

            SizedBox(
              height: 4,
            ),

            Divider(
              color: greycolor.withOpacity(0.4),
              indent: 12,
              endIndent: 12,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Date Container

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          color: yellowcolor,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          reviews,
                          style: TextStyle(color: yellowcolor, fontSize: 13.5),
                        )
                      ],
                    ),
                  ),

                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          color: bluecolor,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          opentime,
                          style: TextStyle(color: bluecolor, fontSize: 13.5),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

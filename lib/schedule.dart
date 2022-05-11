import 'package:flutter/material.dart';

import 'account.dart';
import 'const.dart';
import 'homepage.dart';
import 'message.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  double widthnavbar = 64;
  double heightnavbar = 48;
  int pageIndex = 1;
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
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            bottom: PreferredSize(
                child: Container(
                  height: 50,
                  child: TabBar(
                    labelColor: bluecolor,
                    isScrollable: true,
                    unselectedLabelColor: greycolor,
                    indicatorColor: Colors.transparent,
                    tabs: [
                      Tab(
                        child: Text(
                          'Canceled Schedule',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 182,
                        decoration: BoxDecoration(
                            color: lightblue,
                            borderRadius: BorderRadius.circular(24)),
                        child: Tab(
                          child: Text(
                            'Upcoming Schedule',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      Tab(
                          child: Text(
                        'Completed Schedule',
                        style: TextStyle(fontSize: 16),
                      ))
                    ],
                  ),
                ),
                preferredSize: Size.fromHeight(30.0)),
          ),
          
          body: SingleChildScrollView(
            child: Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        children: const [
                          DocList(
                              doctorname: 'Dr. Joseph Brostito',
                              type: 'Dental Specialist',
                              date: 'Sunday, 12 June',
                              opentime: '11:00 - 12:00',
                              photoname: 'images/drimran.jpg'),
                          DocList(
                              doctorname: 'Dr. Bessie Coleman',
                              type: 'Dental Specialist',
                              date: 'Sunday, 12 June',
                              opentime: '11:00 - 12:00',
                              photoname: 'images/drbessie.png'),
                          DocList(
                              doctorname: 'Dr. Babe Didrikson',
                              type: 'Dental Specialist',
                              date: 'Sunday, 12 June',
                              opentime: '11:00 - 12:00',
                              photoname: 'images/drbabe.png'),
                          DocList(
                              doctorname: 'Dr. Babe Didrikson',
                              type: 'Dental Specialist',
                              date: 'Sunday, 12 June',
                              opentime: '11:00 - 12:00',
                              photoname: 'images/drbabe.png'),
                          DocList(
                              doctorname: 'Dr. Babe Didrikson',
                              type: 'Dental Specialist',
                              date: 'Sunday, 12 June',
                              opentime: '11:00 - 12:00',
                              photoname: 'images/drbabe.png'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: BuildNavBar(context),
        ),
      ),
    );
  }

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
              size: 28,
            ),
            Text(
              pageIndex == index ? namemenu : '',
              style: TextStyle(
                  fontSize: 14,
                  color: pageIndex == index ? bluecolor : greycolor,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

class DocList extends StatelessWidget {
  final String photoname;
  final String doctorname;
  final String type;
  final String date;
  final String opentime;
  const DocList({
    Key? key,
    required this.doctorname,
    required this.type,
    required this.date,
    required this.opentime,
    required this.photoname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 327,
        height: 205,
        decoration: BoxDecoration(
            color: Colors.transparent, borderRadius: BorderRadius.circular(13)),
        child: Column(
          children: [
            //Top Frame
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
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
                  ),
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
                          Icons.calendar_month_outlined,
                          color: greycolor,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          date,
                          style: TextStyle(color: greycolor, fontSize: 13.5),
                        )
                      ],
                    ),
                  ),

                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          color: greycolor,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          opentime,
                          style: TextStyle(color: greycolor, fontSize: 13.5),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 295,
              height: 39,
              decoration: BoxDecoration(
                  color: Color(0xffEFF7FF),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  'Detail',
                  style: TextStyle(color: bluecolor, fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

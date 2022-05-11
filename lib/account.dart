import 'package:dokterian/schedule.dart';
import 'package:flutter/material.dart';

import 'const.dart';
import 'homepage.dart';
import 'message.dart';

class Account extends StatefulWidget {
  const Account({ Key? key }) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
 double widthnavbar = 64;
  double heightnavbar = 48;
  int pageIndex = 3;
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
    return Scaffold(
      bottomNavigationBar: BuildNavBar(context),

      
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
          color: pageIndex == index ? lightblue: colortransp,
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
}
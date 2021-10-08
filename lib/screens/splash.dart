import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gulfthisnews/pages/backButtonClose.dart';
import 'package:intl/intl.dart';

// import 'package:intl/intl.dart';

class SplashScreen extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        // ()=>Navigator.push(context,MaterialPageRoute(builder:(context)=>OutsideDoor())));
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => OutsideDoor())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  // String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
  TimeOfDay _time = TimeOfDay.now();
  DateTime _date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Transform.scale(
                  scale: .84,
                  child: SvgPicture.asset('assets/Pattern_light 1.svg'),
                ),
                SizedBox(
                  width: 50,
                )
              ],
            ),
            Spacer(
              flex: 3,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.scale(
                    scale: 1, child: SvgPicture.asset('assets/Frame.svg')),
                SizedBox(
                  height: 20,
                ),
                Text(
                  DateFormat('EEEE, d MMM, yyyy').format(_date),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.grey,
                      fontFamily: 'inter',
                      wordSpacing: 1),
                ),
              ],
            ),
            Spacer(
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 30,
                ),
                Transform.scale(
                  scale: .841,
                  child: SvgPicture.asset('assets/Pattern_light 2.svg'),
                ),
              ],
            ),
            Spacer(
              flex: 2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Spacer(),
                    Text("Made with ",
                        style: TextStyle(color: Color(0xFFFF24324A))),
                    // Transform.scale(
                    //   scale: .11,
                    //   child: SvgPicture.asset(
                    //     'assets/heart.svg',
                    //     color: Colors.red,
                    //   ),
                    // ),
                    Text(
                      '❤️',
                      style: TextStyle(color: Colors.red.shade900
                          // Color(0xFFFFFF0000)
                          ),
                    ),
                    Text(" in Bahrain",
                        style: TextStyle(color: Color(0xFFFF24324A))),
                    Spacer()
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Transform.scale(
                    scale: 1.15,
                    child: SvgPicture.asset('assets/Group2.svg'),
                  ),
                  Transform.scale(
                    scale: 1.15,
                    child: SvgPicture.asset('assets/Group3.svg'),
                  ),
                  Transform.scale(
                    scale: 1.15,
                    child: SvgPicture.asset('assets/Group1.svg'),
                  ),
                  Transform.scale(
                    scale: 1.15,
                    child: SvgPicture.asset('assets/Group7.svg'),
                  ),
                  Transform.scale(
                    scale: 1.15,
                    child: SvgPicture.asset('assets/Group4.svg'),
                  ),
                  Transform.scale(
                    scale: 1.15,
                    child: SvgPicture.asset('assets/Group8.svg'),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Transform.scale(
                    scale: 1.15,
                    child: SvgPicture.asset('assets/Group5.svg'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Transform.scale(
                    scale: 1.15,
                    child: SvgPicture.asset('assets/Group6.svg'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




//pin decor

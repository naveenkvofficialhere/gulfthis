// TODO Implement this library.import 'material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gulfthisnews/constants/textConstants.dart';
import 'package:gulfthisnews/provider/themeprovider.dart';
import 'package:gulfthisnews/screens/guideScreen.dart';
import 'package:gulfthisnews/screens/more.dart';
import 'package:gulfthisnews/screens/slider.dart';
import 'package:gulfthisnews/widgets/appbar.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  State createState() {
    return _HomeState();
  }
}

class _HomeState extends State {
  int _currentIndex = 0;
  final List _children = [
    Glance(), GuideScreen(),

    //SizedBox()
  ];
  void onTabTapped(int index) {
    // setState(() {
    //   _currentIndex = index;
    // });

    if (index != 2) {
      setState(() {
        _currentIndex = index;
      });

      print(_currentIndex);
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => More()),
      );
    }
  }

  Scaffold star({BuildContext context}) {
    return Scaffold(
        //  backgroundColor: Colors.white,

        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          onTap: onTabTapped, // new
          currentIndex:
              _currentIndex, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Transform.scale(
                alignment: Alignment.topCenter,
                scale: 1,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    'assets/shorts.svg',
                  ),
                ),
              ),
              label: bottomTab1,
            ),
            BottomNavigationBarItem(
              icon: new Transform.scale(
                alignment: Alignment.topCenter,
                scale: 1,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    'assets/guides.svg',
                  ),
                ),
              ),
              label: bottomTab2,
            ),
            BottomNavigationBarItem(
              icon: Transform.scale(
                alignment: Alignment.topCenter,
                scale: 1,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    'assets/more.svg',
                  ),
                ),
              ),
              label: bottomTab3,
            )
          ],

          selectedLabelStyle: TextStyle(
            fontSize: 10, fontFamily: 'inter',
            // color: Color(0xFFFF939393)
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 10,
            fontFamily: 'inter',
            //color: Color(0xFFFF939393)
          ),
          selectedItemColor:
              Provider.of<DemoProvider>(context).themeMode == ThemeMode.dark
                  ? Colors.white
                  : null,
          unselectedItemColor:
              Provider.of<DemoProvider>(context).themeMode == ThemeMode.dark
                  ? Colors.white
                  : null,
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}

// Widget bottomNavigationGulf({context}) {
//   return Container(
//     height: 80,
//     child: BottomNavigationBar(
//       elevation: 8.0,
//       selectedLabelStyle: TextStyle(
//           fontSize: 10, fontFamily: 'inter', color: Color(0xFFFF939393)),
//       unselectedLabelStyle: TextStyle(
//         fontSize: 10,
//         fontFamily: 'inter',
//         //color: Color(0xFFFF939393)
//       ),
//       items: <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: GestureDetector(
//             child: Padding(
//               padding: const EdgeInsets.all(4.0),
//               child: Transform.scale(
//                 alignment: Alignment.topCenter,
//                 scale: 1,
//                 child: SvgPicture.asset(
//                   'assets/shorts.svg',
//                 ),
//               ),
//             ),
//             onTap: () {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => Glance()),
//               );
//             },
//           ),
//           label: 'Shorts',

//           //  backgroundColor: Colors.red,
//         ),
//         BottomNavigationBarItem(
//           icon: GestureDetector(
//             child: Padding(
//               padding: const EdgeInsets.all(4.0),
//               child: Transform.scale(
//                 alignment: Alignment.topCenter,
//                 scale: 1,
//                 child: SvgPicture.asset(
//                   'assets/guides.svg',
//                 ),
//               ),
//             ),
//             onTap: () {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => GuideScreen()),
//               );
//             },
//           ),
//           label: 'Guides',
//           //backgroundColor: Colors.green,
//         ),
//         BottomNavigationBarItem(
//           icon: GestureDetector(
//             child: Padding(
//               padding: const EdgeInsets.all(4.0),
//               child: Transform.scale(
//                 alignment: Alignment.topCenter,
//                 scale: 1,
//                 child: SvgPicture.asset(
//                   'assets/more.svg',
//                 ),
//               ),
//             ),
//             onTap: () {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => More()),
//               );
//             },
//           ),
//           label: 'More',

//           // backgroundColor: Colors.purple,
//         ),
//       ],
//       // currentIndex: _selectedIndex,
//       selectedItemColor: Colors.black,
//       unselectedItemColor: Colors.black,
//       showUnselectedLabels: true,
//       // onTap: _onItemTapped,
//     ),
//   );
// }

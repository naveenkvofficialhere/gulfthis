import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  TabController _tabController;
  @override
  void initState() {
    //FirebaseCrashlytics.instance.crash();

    _tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    //pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 1.5,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 7,
            ),
            GestureDetector(
              child: Transform.scale(
                scale: 1,
                child: SvgPicture.asset(
                  'assets/arrow.svg',
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                print('backbutton pressed');
              },
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Search Tags',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.left,
            ),
          ],
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 5, top: 5, left: 8, right: 6.5),
            decoration: BoxDecoration(

                //boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey.withOpacity(.40), //color of shadow
                //     spreadRadius: 1, //spread radius
                //     blurRadius: 0.10, // blur radius
                //     // offset: Offset(1, 1)
                //   )
                // ]
                ),
            child: Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * .40,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                top: 12,
                left: 12,
                right: 12,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    child: Image.asset('assets/image2.jpg',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Text("How to Calculate End of Service",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                  Spacer(
                    flex: 1,
                  ),
                  Text("Indemnity in Bahrain(2021)",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                  Spacer(
                    flex: 3,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      Text("Updated March 02, 2021     2 Min Read",
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 12,
                          )),

                      Spacer(
                        flex: 5,
                      ),

                      // Spacer(
                      //   flex: 3,
                      // ),
                    ],
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(18),
              child: Text(
                'The Centre has released Rs 1.04 lakh crore to states in four months since October 2020, to meet GST compensation shortfall.the finance ministry said on Monday.',
                style: TextStyle(
                    color: Color(0xffff323C45),
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    fontFamily: 'Inria'),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), //color of shadow
              spreadRadius: 5, //spread radius
              blurRadius: 7, // blur radius
              offset: Offset(0, 2), // changes position of shadow
              //first paramerter of offset is left-right
              //second parameter is top to down
            ),
            //you can set more BoxShadow() here
          ],
        ),
        height: 60,
        child: BottomNavigationBar(
          elevation: 8.0,
          selectedLabelStyle: TextStyle(
              fontSize: 10, fontFamily: 'inter', color: Color(0xFFFF939393)),
          unselectedLabelStyle: TextStyle(
              fontSize: 10, fontFamily: 'inter', color: Color(0xFFFF939393)),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Transform.scale(
                  alignment: Alignment.topCenter,
                  scale: 1,
                  child: SvgPicture.asset(
                    'assets/bookmarks.svg',
                    // color: Provider.of<DemoProvider>(context).themeMode ==
                    //         ThemeMode.dark
                    //     ? Colors.white
                    //     : null,
                  ),
                ),
              ),
              label: 'Bookmark',
              //backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Transform.scale(
                  alignment: Alignment.topCenter,
                  scale: 1,
                  child: SvgPicture.asset(
                    'assets/share.svg',
                    // color: Provider.of<DemoProvider>(context).themeMode ==
                    //         ThemeMode.dark
                    //     ? Colors.white
                    //     : null,
                  ),
                ),
              ),
              label: 'Share',
              //backgroundColor: Colors.green,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

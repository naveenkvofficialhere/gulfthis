import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gulfthisnews/screens/guides.dart';
import 'package:gulfthisnews/screens/more.dart';
import 'package:gulfthisnews/screens/searchScreen.dart';
import 'package:gulfthisnews/screens/slider.dart';
import 'package:gulfthisnews/widgets/appbar.dart';
import 'package:gulfthisnews/widgets/tabIndicator.dart';
import 'package:gulfthisnews/widgets/bottoNavigation.dart';

class GuideScreen extends StatefulWidget {
  @override
  _GuideScreenState createState() => _GuideScreenState();
}

class _GuideScreenState extends State<GuideScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController pageController = PageController();
  int _selectedIndex = 0;
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
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return mainScreenGuides(context);
  }

  Scaffold mainScreenGuides(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Transform.scale(
              scale: 1, child: SvgPicture.asset('assets/gulfthis.svg')),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: GestureDetector(
                child: Transform.scale(
                    scale: 1, child: SvgPicture.asset('assets/lens.svg')),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchScreen()),
                  );
                }),
          ),
        ],
        bottom: new PreferredSize(
          preferredSize: new Size(55.0, 55.0),
          child: Column(
            children: [
              Divider(
                thickness: 2,
                height: 3,
              ),
              new Container(
                width: 900.0,
                height: 55,
                padding: EdgeInsets.only(bottom: 10, top: 10),
                child: SingleChildScrollView(
                  child: new TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black,
                    isScrollable: true,
                    labelStyle: TextStyle(
                        // color: Colors.red,
                        fontSize: 14,
                        fontFamily: 'inter',
                        fontWeight: FontWeight.w600),
                    indicatorWeight: 4,
                    controller: _tabController,
                    indicator: MD2Indicator(
                      indicatorSize: MD2IndicatorSize.normal,
                      indicatorHeight: 4.0,
                      indicatorColor: Colors.teal,
                    ),

                    //  UnderlineTabIndicator(
                    //     borderSide: BorderSide(
                    //       color: Colors.teal,
                    //       width: 4,
                    //     ),
                    //  insets: EdgeInsets.only(left: 18, right: 18)),
                    tabs: [
                      new Container(
                        height: 20,
                        child: new Tab(text: 'What\'s Up Bahrain '),
                      ),
                      new Container(
                        height: 20,
                        child: new Tab(text: 'Living in Bahrain '),
                      ),
                      new Container(
                        height: 20,
                        child: new Tab(text: 'Working in Bahrain '),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        //  flexibleSpace: appBarMainPage(context)
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Guides(),
          // Center(
          //   child: Text("hey"),
          // ),
          Center(
            child: Text("hey"),

            //GestureDetector(child: Text("It's rainy here"),
            // onTap:(){
            //   Navigator.push(context,MaterialPageRoute(builder:(context) => CustomSliverAppbar()));
            // },
            // ),
          ),
          Center(
            child: Text("hey"),

            //GestureDetector(child: Text("It's rainy here"),
            // onTap:(){
            //   Navigator.push(context,MaterialPageRoute(builder:(context) => CustomSliverAppbar()));
            // },
            // ),
          )
          // Center(
          //   child: Text("It's sunny here"),
          // ),
        ],
      ),
      // bottomNavigationBar: bottomNavigationGulf(),
    );
  }
}

//tab indicator style

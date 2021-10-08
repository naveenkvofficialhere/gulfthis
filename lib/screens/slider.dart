import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:gulfthisnews/provider/themeprovider.dart';
import 'package:gulfthisnews/screens/more.dart';
import 'package:gulfthisnews/widgets/appbar.dart';
import 'package:gulfthisnews/widgets/bottoNavigation.dart';
import 'package:provider/provider.dart';

import 'guideScreen.dart';

class Glance extends StatefulWidget {
//  const Glance({Key? key}) : super(key: key);
  @override
  _GlanceState createState() => _GlanceState();
}

class _GlanceState extends State<Glance> with SingleTickerProviderStateMixin {
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

  List<String> images = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];

  @override
  Widget build(BuildContext context) {
    return SliderBody(context);
  }

  Scaffold SliderBody(BuildContext context) {
    return Scaffold(
      appBar: appbarMainPage(context),
      body: Container(
        padding: EdgeInsets.only(top: 5, bottom: 5, left: 19, right: 16.5),
        child: Swiper(
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            print('index');
            return FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString("assets/data.json"),
                builder: (context, snapshot) {
                  var myData = json.decode(snapshot.data.toString());
                  return
                      //Text(images[index]);
                      Container(
                    child: Column(
                      children: [
                        Container(
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
                            // color: Colors.white,
                            height: MediaQuery.of(context).size.height * .38,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(
                              top: 12,
                              // left: 12,
                              // right: 12,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * .26,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    //let's add the height

                                    image: DecorationImage(
                                        image: AssetImage(
                                            // article.urlToImage
                                            myData[images[index]]['imageName']),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                                // SizedBox(
                                //   height: 18,
                                // ),
                                Spacer(
                                  flex: 1,
                                ),
                                Text(myData[images[index]]['title'],
                                    style: TextStyle(
                                        // color: Color(0xFFFF323C45),
                                        fontSize: 16,
                                        fontFamily: 'inter',
                                        fontWeight: FontWeight.w600)),

                                Spacer(
                                  flex: 1,
                                ),
                                Row(
                                  children: [
                                    //  Text(DateFormat('MMM d, yyyy').format(DateTime.parse(article.publishedAt)).toString()),

                                    Spacer(
                                      flex: 5,
                                    ),
                                    // Text("0 comments",
                                    //     style: TextStyle(
                                    //       color: Colors.grey[400],
                                    //       fontSize: 12,
                                    //     )),
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
                        Padding(
                          //padding: const EdgeInsets.only(left: 16, right: 16),
                          padding: EdgeInsets.all(0),
                          child: Text(
                            myData[images[index]]['content'],
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                // color: Color(0xffff323C45),

                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                height: 1.5,
                                fontFamily: 'Inria'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            // SizedBox(
                            //   width: 16,
                            // ),
                            Text("Updated",
                                style: TextStyle(
                                  color: Color(0xFFFF939393),
                                  fontSize: 10,
                                  fontFamily: 'inter',
                                )),
                            SizedBox(
                              width: 4,
                            ),
                            Text(myData[images[index]]['date'],
                                style: TextStyle(
                                  color: Color(0xFFFF939393),
                                  fontSize: 10,
                                  fontFamily: 'inter',
                                )),
                          ],
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Transform.scale(
                                    scale: .80,
                                    child: SvgPicture.asset(
                                      'assets/love.svg',
                                      color: Provider.of<DemoProvider>(context)
                                                  .themeMode ==
                                              ThemeMode.dark
                                          ? Colors.white
                                          : null,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Text('6.3k')
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Transform.scale(
                                    scale: 1,
                                    child: SvgPicture.asset(
                                      'assets/whatsapp.svg',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Text('82')
                                ],
                              ),
                            )
                          ],
                        ),
                        Spacer(
                          flex: 2,
                        ),
                      ],
                    ),
                  );
                });
            //  Container(
            //     height: double.infinity,
            //     width: double.infinity,
            //     color: Colors.amber,
            //     child: Center(
            //         child: Text(
            //       images[index],
            //       style: TextStyle(fontSize: 22),
            //     )));
          },
          scrollDirection: Axis.vertical,
        ),
      ),
      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     MyOutlinedButton(
      //       onPressed: () {},
      //       gradient: LinearGradient(colors: [Colors.indigo, Colors.pink]),
      //       child: Text('Swipe'),
      //     ),
      //   ],
      // ),

      //  bottomNavigationBar: bottomNavigationGulf(),
    );
  }
}

//elevated Button

class MyOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final ButtonStyle style;
  final Gradient gradient;
  final double thickness;

  const MyOutlinedButton({
    Key key,
    this.onPressed,
    this.child,
    this.style,
    this.gradient,
    this.thickness = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(gradient: gradient),
        child: Container(
          height: 30,
          width: 80,
          color: Colors.white,
          margin: EdgeInsets.all(thickness),
          child: OutlinedButton(
            onPressed: onPressed,
            style: style,
            child: child,
          ),
        ),
      ),
    );
  }
}

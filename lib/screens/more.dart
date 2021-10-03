import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gulfthisnews/screens/guideScreen.dart';
import 'package:gulfthisnews/widgets/bottoNavigation.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
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
                  //  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );

                  print('backbutton pressed');
                },
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Settings',
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
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 8, right: 6),
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xFFFBEBEBE),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  tiles1(
                      svgpic: 'assets/language.svg',
                      text: 'Language',
                      text2: 'English',
                      dropdown: Icons.arrow_drop_down),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Transform.scale(
                          scale: 1,
                          child: SvgPicture.asset(
                            'assets/morebookmark.svg',
                          ),
                        ),
                        SizedBox(width: 55),
                        Text(
                          'Bookmarks',
                          style: TextStyle(
                            color: Color(0xFFFBEBEBE),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .40,
                        ),
                        SizedBox(width: 47)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Transform.scale(
                          scale: 1,
                          child: SvgPicture.asset(
                            'assets/bell.svg',
                          ),
                        ),
                        SizedBox(width: 54),
                        Text(
                          'Notifications',
                          style: TextStyle(
                            color: Color(0xFFFBEBEBE),
                          ),
                        ),
                        Spacer(
                          flex: 3,
                        ),
                        Transform.scale(
                          scale: 1.5,
                          child: Switch.adaptive(
                            activeThumbImage: AssetImage(
                              'assets/bell.png',
                            ),
                            inactiveThumbImage: AssetImage(
                              'assets/bell.png',
                            ),
                            value: null,
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Transform.scale(
                          scale: 1,
                          child: SvgPicture.asset(
                            'assets/nightmode.svg',
                          ),
                        ),
                        SizedBox(width: 42),
                        Text(
                          'Notifications',
                          style: TextStyle(
                            color: Color(0xFFFBEBEBE),
                          ),
                        ),
                        Spacer(
                          flex: 3,
                        ),
                        Transform.scale(
                          scale: 1.25,
                          child: Switch.adaptive(
                            activeThumbImage: AssetImage(
                              'assets/brightness.png',
                            ),
                            inactiveThumbImage: AssetImage(
                              'assets/brightness.png',
                            ),
                            value: null,
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  bottomtile(textElement: 'Share this app'),
                  bottomtile(textElement: 'Rate this app'),
                  bottomtile(textElement: 'Terms & Conditions'),
                  bottomtile(textElement: 'Editorial Policy'),
                  bottomtile(textElement: 'Privacy Policy'),
                ],
              ),
            ),
          ],
        ));
  }

  Padding bottomtile({String textElement}) {
    return Padding(
      padding: const EdgeInsets.only(top: 18, bottom: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            textElement,
            style: TextStyle(
              color: Color(0xFFFBEBEBE),
            ),
          ),
        ],
      ),
    );
  }

  Padding tiles1(
      {String svgpic,
      String text,
      String text2,
      IconData dropdown,
      int anywidget}) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        children: [
          Transform.scale(
            scale: 1,
            child: SvgPicture.asset(
              svgpic,
            ),
          ),
          SizedBox(width: 50),
          Text(
            text,
            style: TextStyle(
              color: Color(0xFFFBEBEBE),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .40,
          ),
          Text(
            text2,
            style: TextStyle(color: Colors.blue),
          ),
          GestureDetector(
            child: Icon(
              Icons.arrow_drop_down,
              color: Colors.blue,
            ),
            onTap: () {
              showModalBottomSheet(

                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.all(
                  //         Radius.circular(10.0))),
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.check, color: Colors.blue),
                          title: Row(
                            children: [
                              SizedBox(
                                width: 40.0,
                              ),
                              new Text(
                                'English',
                                style: TextStyle(
                                  color: Color(0xFFFBEBEBE),
                                  // color:
                                  //     Provider.of<DemoProvider>(
                                  //                     context)
                                  //                 .themeMode ==
                                  //             ThemeMode.dark
                                  //         ? Colors.white
                                  //         : Colors
                                  //             .grey.shade800,
                                  //     // color: Colors.blue,
                                  //     fontWeight:
                                  //         FontWeight.bold,
                                  //
                                  // letterSpacing: 1.0
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            // setState(() {
                            //   langTitle = 'English';
                            //   lang = 0;
                            //   readData();
                            // });
                            // Provider.of<DemoProvider>(context,
                            //         listen: false)
                            //     .changeLanguage("English");
                            // Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          leading:
                              new Icon(Icons.check, color: Colors.transparent),
                          title: Row(
                            children: [
                              SizedBox(
                                width: 40.0,
                              ),
                              new Text(
                                'മലയാളം',
                                style: TextStyle(
                                  color: Color(0xFFFBEBEBE),
                                  // color:
                                  //     Provider.of<DemoProvider>(
                                  //                     context)
                                  //                 .themeMode ==
                                  //             ThemeMode.dark
                                  //         ? Colors.white
                                  //         : Colors
                                  //             .grey.shade800,
                                  //     // color: Colors.blue,
                                  //     fontWeight:
                                  //         Fo ntWeight.bold,
                                  //     letterSpacing: 2.0
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            // setState(() {
                            //   langTitle = 'മലയാളം';
                            //   lang = 1;
                            //   readData();
                            // });
                            // Provider.of<DemoProvider>(context,
                            //         listen: false)
                            //     .changeLanguage("മലയാളം");
                            // Navigator.pop(context);
                          },
                        ),
                        // ListTile(
                        //   leading: new Icon(Icons.videocam),
                        //   title: new Text('Video'),
                        //   onTap: () {
                        //     Navigator.pop(context);
                        //   },
                        // ),
                        // ListTile(
                        //   leading: new Icon(Icons.share),
                        //   title: new Text('Share'),
                        //   onTap: () {
                        //     Navigator.pop(context);
                        //   },
                        // ),
                      ],
                    );
                  });
            },
          ),
        ],
      ),
    );
  }
}

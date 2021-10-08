import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gulfthisnews/constants/constants.dart';
import 'package:gulfthisnews/constants/textConstants.dart';
import 'package:gulfthisnews/pages/editorial.dart';
import 'package:gulfthisnews/pages/privacy.dart';
import 'package:gulfthisnews/pages/terms.dart';
import 'package:gulfthisnews/provider/themeprovider.dart';

import 'package:provider/provider.dart';
import 'package:rate_my_app/rate_my_app.dart';
import 'package:share/share.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    RateMyApp rateMyApp = RateMyApp(
      preferencesPrefix: 'rateMyApp_',
      minDays: 0,
      minLaunches: 10,
      remindDays: 7,
      remindLaunches: 10,
      googlePlayIdentifier: 'fr.skyost.example',
      appStoreIdentifier: '1491556149',
    );

    final themeProvider = Provider.of<DemoProvider>(context);
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          //  backgroundColor: Colors.white,
          elevation: 1.5,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SizedBox(
              //   width: 7,
              // ),
              GestureDetector(
                child: Transform.scale(
                  scale: 1,
                  child: SvgPicture.asset(
                    'assets/arrow.svg',
                    color: Provider.of<DemoProvider>(context).themeMode ==
                            ThemeMode.dark
                        ? Colors.white
                        : null,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Home()),
                  // );

                  print('backbutton pressed');
                },
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Settings',
                style: TextStyle(
                    fontSize: settingsSizeText,
                    color: greyButtonColor,
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
                        color: greyButtonColor,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  GestureDetector(
                    child: tiles1(
                        svgpic: 'assets/language.svg',
                        text: 'Language',
                        text2: 'English',
                        dropdown: Icons.arrow_drop_down),
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
                                  leading:
                                      Icon(Icons.check, color: Colors.blue),
                                  title: Row(
                                    children: [
                                      SizedBox(
                                        width: 40.0,
                                      ),
                                      new Text(
                                        'English',
                                        style: TextStyle(
                                          color: greyButtonColor,
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
                                  leading: new Icon(Icons.check,
                                      color: Colors.transparent),
                                  title: Row(
                                    children: [
                                      SizedBox(
                                        width: 40.0,
                                      ),
                                      new Text(
                                        'മലയാളം',
                                        style: TextStyle(
                                          color: greyButtonColor,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Transform.scale(
                          scale: 1,
                          child: SvgPicture.asset(
                            'assets/morebookmark.svg',
                            color:
                                Provider.of<DemoProvider>(context).themeMode ==
                                        ThemeMode.dark
                                    ? Colors.white
                                    : null,
                          ),
                        ),
                        SizedBox(width: 55),
                        Text(
                          'Bookmarks',
                          style: TextStyle(
                            color: greyButtonColor,
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
                            color:
                                Provider.of<DemoProvider>(context).themeMode ==
                                        ThemeMode.dark
                                    ? Colors.white
                                    : null,
                          ),
                        ),
                        SizedBox(width: 54),
                        Text(
                          'Notifications',
                          style: TextStyle(
                            color: greyButtonColor,
                          ),
                        ),
                        Spacer(
                          flex: 3,
                        ),
                        Transform.scale(
                          scale: .90,
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
                            color:
                                Provider.of<DemoProvider>(context).themeMode ==
                                        ThemeMode.dark
                                    ? Colors.white
                                    : null,
                          ),
                        ),
                        SizedBox(width: 42),
                        Text(
                          'NightMode',
                          style: TextStyle(
                            color: greyButtonColor,
                          ),
                        ),
                        Spacer(
                          flex: 3,
                        ),
                        Transform.scale(
                          scale: 1,
                          child: Switch.adaptive(
                            value: themeProvider.isDarkMode,
                            activeThumbImage: AssetImage(
                              'assets/sun.png',
                            ),
                            inactiveThumbImage: AssetImage(
                              'assets/sun.png',
                            ),
                            onChanged: (value) {
                              final provider = Provider.of<DemoProvider>(
                                  context,
                                  listen: false);
                              provider.toggleTheme(value);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  GestureDetector(
                    child: bottomtile(textElement: 'Share this app'),
                    onTap: () {
                      Share.share('check out my website https://example.com',
                          subject: 'Look what I made!');
                    },
                  ),
                  GestureDetector(
                    child: bottomtile(textElement: 'Rate this app'),
                    onTap: () {
                      rateMyApp.showStarRateDialog(
                        context,
                        title: 'Rate this app', // The dialog title.
                        message:
                            'You like this app ? Then take a little bit of your time to leave a rating :', // The dialog message.
                        // contentBuilder: (context, defaultContent) => content, // This one allows you to change the default dialog content.
                        actionsBuilder: (context, stars) {
                          // Triggered when the user updates the star rating.
                          return [
                            // Return a list of actions (that will be shown at the bottom of the dialog).
                            FlatButton(
                              child: Text('OK'),
                              onPressed: () async {
                                print('Thanks for the ' +
                                    (stars == null
                                        ? '0'
                                        : stars.round().toString()) +
                                    ' star(s) !');
                                // You can handle the result as you want (for instance if the user puts 1 star then open your contact page, if he puts more then open the store page, etc...).
                                // // This allows to mimic the behavior of the default "Rate" button. See "Advanced > Broadcasting events" for more information :
                                // await rateMyApp.callEvent(
                                //     RateMyAppEventType.rateButtonPressed);
                                Navigator.pop<RateMyAppDialogButton>(
                                    context, RateMyAppDialogButton.rate);
                              },
                            ),
                          ];
                        },
                        ignoreNativeDialog: Platform
                            .isAndroid, // Set to false if you want to show the Apple's native app rating dialog on iOS or Google's native app rating dialog (depends on the current Platform).
                        dialogStyle: const DialogStyle(
                          // Custom dialog styles.
                          titleAlign: TextAlign.center,
                          messageAlign: TextAlign.center,
                          messagePadding: EdgeInsets.only(bottom: 20),
                        ),
                        starRatingOptions:
                            const StarRatingOptions(), // Custom star bar rating options.
                        onDismissed: () => rateMyApp.callEvent(RateMyAppEventType
                            .laterButtonPressed), // Called when the user dismissed the dialog (either by taping outside or by pressing the "back" button).
                      );
                    },
                  ),
                  GestureDetector(
                      child: bottomtile(textElement: 'Terms & Conditions'),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Terms()),
                        );
                      }),
                  GestureDetector(
                      child: bottomtile(textElement: 'Editorial Policy'),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Editorial()),
                        );
                      }),
                  GestureDetector(
                      child: bottomtile(textElement: 'Privacy Policy'),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Privacy()),
                        );
                      }),
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
              fontSize: tileTextSize,
              color: greyButtonColor,
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
              color:
                  Provider.of<DemoProvider>(context).themeMode == ThemeMode.dark
                      ? Colors.white
                      : null,
            ),
          ),
          SizedBox(width: 50),
          Text(
            text,
            style: TextStyle(
              color: greyButtonColor,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .40,
          ),
          Text(
            text2,
            style: TextStyle(color: Colors.blue),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

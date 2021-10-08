import 'package:flutter/material.dart';
import 'package:gulfthisnews/provider/themeprovider.dart';
import 'package:gulfthisnews/screens/detailScreen.dart';
import 'package:gulfthisnews/screens/guideScreen.dart';
import 'package:gulfthisnews/screens/more.dart';
import 'package:gulfthisnews/screens/slider.dart';

import 'package:gulfthisnews/screens/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override //
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DemoProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<DemoProvider>(context);
          return MaterialApp(
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            //theme: ThemeData.dark(),
            //themeMode: ThemeMode.dark,
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
            // theme: ThemeData.dark(),
          );
        });
  }
}

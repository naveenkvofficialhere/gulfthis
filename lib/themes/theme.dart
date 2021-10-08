import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gulfthisnews/constants/constants.dart';

// This is our  main focus
// Let's apply light and dark theme on our app
// Now let's add dark theme on our app

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kContentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kContentColorLightTheme),
    textTheme: TextTheme(
      headline1: GoogleFonts.nunito(
          fontSize: 101, fontWeight: FontWeight.w300, letterSpacing: -1.5),
      headline2: GoogleFonts.nunito(
          fontSize: 63, fontWeight: FontWeight.w300, letterSpacing: -0.5),
      headline3: GoogleFonts.nunito(fontSize: 50, fontWeight: FontWeight.w400),
      headline4: GoogleFonts.nunito(
          fontSize: 36, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      headline5: GoogleFonts.nunito(fontSize: 25, fontWeight: FontWeight.w700),
      headline6: GoogleFonts.nunito(
          fontSize: 21, fontWeight: FontWeight.w500, letterSpacing: 0.15),
      subtitle1: GoogleFonts.nunito(
          fontSize: 20, fontWeight: FontWeight.w700, letterSpacing: 0.15),
      subtitle2: GoogleFonts.nunito(
          fontSize: 15, fontWeight: FontWeight.w600, letterSpacing: 0.1),
      bodyText1: GoogleFonts.nunito(
          fontSize: 18, fontWeight: FontWeight.w600, letterSpacing: 1.2),
      bodyText2: GoogleFonts.nunito(
          fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      button: GoogleFonts.nunito(
          fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 1.25),
      caption: GoogleFonts.nunito(
          fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.4),
      overline: GoogleFonts.nunito(
          fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
    ).apply(
      bodyColor: Color(0xFF3C404C),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: kContentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: kContentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: kPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  // Bydefault flutter provie us light and dark theme
  // we just modify it as our need
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kContentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kContentColorDarkTheme),
    textTheme: TextTheme(
      headline1: GoogleFonts.nunito(
          fontSize: 101, fontWeight: FontWeight.w300, letterSpacing: -1.5),
      headline2: GoogleFonts.nunito(
          fontSize: 63, fontWeight: FontWeight.w300, letterSpacing: -0.5),
      headline3: GoogleFonts.nunito(fontSize: 50, fontWeight: FontWeight.w400),
      headline4: GoogleFonts.nunito(
          fontSize: 36, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      headline5: GoogleFonts.nunito(fontSize: 25, fontWeight: FontWeight.w700),
      headline6: GoogleFonts.nunito(
          fontSize: 21, fontWeight: FontWeight.w500, letterSpacing: 0.15),
      subtitle1: GoogleFonts.nunito(
          fontSize: 20, fontWeight: FontWeight.w700, letterSpacing: 0.15),
      subtitle2: GoogleFonts.nunito(
          fontSize: 15, fontWeight: FontWeight.w600, letterSpacing: 0.1),
      bodyText1: GoogleFonts.nunito(
          fontSize: 17, fontWeight: FontWeight.w600, letterSpacing: 1),
      bodyText2: GoogleFonts.nunito(
          fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      button: GoogleFonts.nunito(
          fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 1.25),
      caption: GoogleFonts.nunito(
          fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.4),
      overline: GoogleFonts.nunito(
          fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
    ),
    colorScheme: ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kContentColorLightTheme,
      selectedItemColor: Colors.white70,
      unselectedItemColor: kContentColorDarkTheme.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: kPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

final appBarTheme =
    AppBarTheme(centerTitle: true, color: Color(0xFFFFFFFF), elevation: 1);

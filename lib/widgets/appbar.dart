import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gulfthisnews/screens/searchScreen.dart';

AppBar appbarMainPage(context) {
  return AppBar(
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
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static const Color Primary = Color(0xffEC2028);
  static const Color InputBorderColor = Color(0xffCED6E0);
  static const Color GreyDark = Color(0xff747D8C);
  static const Color ScaffoldBg = Color(0xffF1F2F6);
  static const Color Yellow = Color(0xffF7B731);

  ThemeData themeData(BuildContext context) {
    return ThemeData(
      textTheme: TextTheme(
        headline1: GoogleFonts.openSans(
            fontSize: 97, fontWeight: FontWeight.w300, letterSpacing: -1.5),
        headline2: GoogleFonts.openSans(
            fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
        headline3:
            GoogleFonts.openSans(fontSize: 48, fontWeight: FontWeight.w400),
        headline4: GoogleFonts.openSans(
            fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
        headline5:
            GoogleFonts.openSans(fontSize: 24, fontWeight: FontWeight.w400),
        headline6: GoogleFonts.openSans(
            fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
        subtitle1: GoogleFonts.openSans(
            fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
        subtitle2: GoogleFonts.openSans(
            fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
        bodyText1: GoogleFonts.openSans(
            fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
        bodyText2: GoogleFonts.openSans(
            fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
        button: GoogleFonts.openSans(
            fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
        caption: GoogleFonts.openSans(
            fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
        overline: GoogleFonts.openSans(
            fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
      ),
      fontFamily: GoogleFonts.ptSans().fontFamily,
      // fontFamily: Fonts.productSans,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  ///Singleton factory
  static final Styles _instance = Styles._internal();

  factory Styles() {
    return _instance;
  }

  Styles._internal();
}

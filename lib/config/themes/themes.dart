import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'light.dart';
import 'dark.dart';

class Themes {
  ///Singleton factory
  static final Themes _instance = Themes._internal();

  factory Themes() {
    return _instance;
  }

  Themes._internal();

  ThemeData getTheme({bool isLight = false}) {
    // Set Font
    String font = GoogleFonts.ptSans().fontFamily;

    // Set Theme Font Size
    TextTheme textTheme = TextTheme(
      //HEADLINE
      headline1: TextStyle(
        fontSize: 38,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      headline4: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      headline5: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      headline6: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
      ),

      // Subtitle
      subtitle1: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      subtitle2: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),

      // Body Text
      bodyText1: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),

      // Default Text
      bodyText2: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),

      // ETC
      button: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
      ),
      caption: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
      ),
      overline: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
      ),
    );

    return isLight
        ? Light.getTheme(font: font, textTheme: textTheme)
        : Dark.getTheme(font: font, textTheme: textTheme);
  }
}

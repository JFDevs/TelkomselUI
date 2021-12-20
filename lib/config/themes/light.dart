import 'package:flutter/material.dart';

class Light {
  ///Singleton factory
  static final Light _instance = Light._internal();
  static const TextPrimaryColor = Color(0xff22215B);

  factory Light() {
    return _instance;
  }

  Light._internal();

  static ThemeData getTheme(
      {@required String font, @required TextTheme textTheme}) {
    return ThemeData(
      textTheme: TextTheme(
        headline1: textTheme.headline1.copyWith(color: TextPrimaryColor),
        headline2: textTheme.headline2.copyWith(color: TextPrimaryColor),
        headline3: textTheme.headline3.copyWith(color: TextPrimaryColor),
        headline4: textTheme.headline4.copyWith(color: TextPrimaryColor),
        headline5: textTheme.headline5.copyWith(color: TextPrimaryColor),
        headline6: textTheme.headline6.copyWith(color: Colors.black),
        subtitle1: textTheme.subtitle1
            .copyWith(color: TextPrimaryColor.withOpacity(.6)),
        subtitle2: textTheme.subtitle2
            .copyWith(color: TextPrimaryColor.withOpacity(.6)),
        bodyText1: textTheme.bodyText1.copyWith(color: Colors.black),
        bodyText2: textTheme.bodyText2.copyWith(color: Colors.black),
        button: textTheme.button.copyWith(color: Colors.black),
        caption: textTheme.caption.copyWith(color: Colors.black),
        overline: textTheme.overline.copyWith(color: TextPrimaryColor),
      ),
      // Warna Icon Floating
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
      ),
      // Warna Icon
      iconTheme: IconThemeData(color: TextPrimaryColor),
      primarySwatch: MaterialColor(4294359873, {
        50: Color(0xff567DF4).withOpacity(.1),
        100: Color(0xff567DF4).withOpacity(.2),
        200: Color(0xff567DF4).withOpacity(.3),
        300: Color(0xff567DF4).withOpacity(.4),
        400: Color(0xff567DF4).withOpacity(.5),
        500: Color(0xff567DF4).withOpacity(.6),
        600: Color(0xff567DF4).withOpacity(.7),
        700: Color(0xff567DF4).withOpacity(.8),
        800: Color(0xff567DF4).withOpacity(.9),
        900: Color(0xff567DF4).withOpacity(1)
      }),
      fontFamily: font,
      brightness: Brightness.light,
      primaryColor: Color(0xff567DF4),
      primaryColorBrightness: Brightness.dark,
      primaryColorLight: Color(0xff567DF4),
      primaryColorDark: Color(0xff567DF4),
      accentColor: Color(0xff567DF4),
      accentColorBrightness: Brightness.dark,
      canvasColor: Color(0xfffafafa),
      scaffoldBackgroundColor: Colors.white,
      bottomAppBarColor: Color(0xffffffff),
      cardColor: Color(0xffffffff),
      dividerColor: Color(0xffF1F2F6),
      highlightColor: Color(0x66bcbcbc),
      splashColor: Color(0x66c8c8c8),
      selectedRowColor: Color(0xfff5f5f5),
      unselectedWidgetColor: Color(0x8a000000),
      disabledColor: Color(0x61000000),
      buttonColor: Color(0xff567DF4),
      toggleableActiveColor: Color(0xff567DF4),
      secondaryHeaderColor: Color(0xfffef6e7),
      textSelectionColor: Color(0xfffef6e7),
      cursorColor: Color(0xff4285f4),
      textSelectionHandleColor: Color(0xff567DF4),
      backgroundColor: Color(0xff567DF4),
      dialogBackgroundColor: Color(0xffffffff),
      indicatorColor: Color(0xff567DF4),
      // Hint Pada Text Input
      hintColor: Color(0x61000000),
      errorColor: Color(0xffd32f2f),
      buttonTheme: ButtonThemeData(
        textTheme: ButtonTextTheme.accent,
        minWidth: 88,
        height: 48,
        padding: EdgeInsets.only(left: 16, right: 16),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Color(0xff000000),
            width: 0,
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        buttonColor: Color(0xff567DF4),
        disabledColor: Color(0x61000000),
        highlightColor: Color(0x29000000),
        splashColor: Color(0x1f000000),
        focusColor: Color(0x1f000000),
        hoverColor: Color(0x0a000000),
      ),
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: EdgeInsets.only(
            top: 12,
            bottom: 12,
            left: 15,
            right: 15,
          ),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.pink))),
      chipTheme: ChipThemeData(
        backgroundColor: Color(0x1f000000),
        brightness: Brightness.light,
        deleteIconColor: Color(0xff567DF4),
        disabledColor: Color(0x0c000000),
        labelPadding: EdgeInsets.only(left: 8, right: 8),
        labelStyle: TextStyle(
          fontSize: 12,
          fontFamily: font,
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
        secondaryLabelStyle: TextStyle(
          fontSize: 12,
          fontFamily: font,
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        secondarySelectedColor: Color(0x3df6bb41),
        selectedColor: Color(0x3df6bb41),
        shape: StadiumBorder(
          side: BorderSide(
            color: Color(0xff000000),
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

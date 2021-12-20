import 'package:flutter/material.dart';

class Dark {
  ///Singleton factory
  static final Dark _instance = Dark._internal();

  factory Dark() {
    return _instance;
  }

  Dark._internal();

  static ThemeData getTheme(
      {@required String font, @required TextTheme textTheme}) {
    return ThemeData(
      textTheme: TextTheme(
        headline1: textTheme.headline1.copyWith(color: Color(0xffe6e6e6)),
        headline2: textTheme.headline2.copyWith(color: Color(0xffe6e6e6)),
        headline3: textTheme.headline3.copyWith(color: Color(0xffe6e6e6)),
        headline4: textTheme.headline4.copyWith(color: Color(0xffe6e6e6)),
        headline5: textTheme.headline5.copyWith(color: Color(0xffe6e6e6)),
        headline6: textTheme.headline6.copyWith(color: Color(0xffe6e6e6)),
        subtitle1: textTheme.subtitle1.copyWith(color: Color(0xffe6e6e6)),
        subtitle2: textTheme.subtitle2.copyWith(color: Color(0xffe6e6e6)),
        bodyText1: textTheme.bodyText1.copyWith(color: Color(0xffe6e6e6)),
        bodyText2: textTheme.bodyText2.copyWith(color: Color(0xffe6e6e6)),
        button: textTheme.button.copyWith(color: Color(0xffe6e6e6)),
        caption: textTheme.caption.copyWith(color: Color(0xffe6e6e6)),
        overline: textTheme.overline.copyWith(color: Color(0xffe6e6e6)),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: Color(0xff303030),
      ),
      primarySwatch: MaterialColor(4280361249, {
        50: Color(0xfff2f2f2),
        100: Color(0xffe6e6e6),
        200: Color(0xffcccccc),
        300: Color(0xffb3b3b3),
        400: Color(0xff999999),
        500: Color(0xff808080),
        600: Color(0xff666666),
        700: Color(0xff4d4d4d),
        800: Color(0xff333333),
        900: Color(0xff191919)
      }),
      fontFamily: font,
      brightness: Brightness.dark,
      primaryColor: Color(0xff567DF4),
      primaryColorBrightness: Brightness.dark,
      primaryColorLight: Color(0xff9e9e9e),
      primaryColorDark: Color(0xff000000),
      accentColor: Color(0xff567DF4),
      accentColorBrightness: Brightness.light,
      canvasColor: Colors.grey[900],
      scaffoldBackgroundColor: Color(0xff303030),
      bottomAppBarColor: Color(0xff424242),
      cardColor: Color(0xff424242),
      dividerColor: Color(0x1fffffff),
      highlightColor: Color(0x40cccccc),
      splashColor: Color(0x40cccccc),
      selectedRowColor: Color(0xfff5f5f5),
      unselectedWidgetColor: Color(0xb3ffffff),
      disabledColor: Color(0x62ffffff),
      buttonColor: Color(0xff567DF4),
      toggleableActiveColor: Color(0xff567DF4),
      secondaryHeaderColor: Color(0xff616161),
      textSelectionColor: Color(0xff567DF4),
      cursorColor: Color(0xff4285f4),
      textSelectionHandleColor: Color(0xff567DF4),
      backgroundColor: Color(0xff616161),
      dialogBackgroundColor: Color(0xff424242),
      indicatorColor: Color(0xff567DF4),
      hintColor: Color(0x80ffffff),
      errorColor: Color(0xffd32f2f),
      appBarTheme: AppBarTheme(
        brightness: Brightness.dark,
        color: Colors.grey[900],
      ),
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
        disabledColor: Color(0x61ffffff),
        highlightColor: Color(0x29ffffff),
        splashColor: Color(0x1fffffff),
        focusColor: Color(0x1fffffff),
        hoverColor: Color(0x0affffff),
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.only(
          top: 12,
          bottom: 12,
          left: 15,
          right: 15,
        ),
      ),
      sliderTheme: SliderThemeData.fromPrimaryColors(
        primaryColor: Color(0xff567DF4),
        primaryColorLight: Color(0xfffdeece),
        primaryColorDark: Color(0xff926507),
        valueIndicatorTextStyle: TextStyle(
          color: Color(0xffffffff),
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: Color(0x1fffffff),
        brightness: Brightness.dark,
        deleteIconColor: Color(0xdeffffff),
        disabledColor: Color(0x0cffffff),
        labelPadding: EdgeInsets.only(left: 8, right: 8),
        labelStyle: TextStyle(
          color: Color(0xdeffffff),
          fontSize: 12,
          fontFamily: font,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
        secondaryLabelStyle: TextStyle(
          color: Color(0x3dffffff),
          fontSize: 12,
          fontFamily: font,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        secondarySelectedColor: Color(0x3d212121),
        selectedColor: Color(0x3dffffff),
        shape: StadiumBorder(
            side: BorderSide(
          color: Color(0xff000000),
          width: 0,
          style: BorderStyle.none,
        )),
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

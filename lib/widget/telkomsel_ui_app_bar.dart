import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'package:flutter/services.dart';
import '../widget/widget.dart';

final bool cleanStyle = true;

class TelkomselUiAppBar {
  static AppBar defaultAppBar(
      {@required BuildContext context,
      Widget leading,
      Color backgroundColor,
      Brightness brightness,
      String title,
      double elavation = 0,
      List<Widget> actions,
      PreferredSizeWidget bottom}) {
    return AppBar(
      actionsIconTheme: cleanStyle
          ? IconThemeData(
              color: Theme.of(context).brightness == Brightness.light
                  ? Theme.of(context).textTheme.headline1.color
                  : Colors.white)
          : null,
      iconTheme: cleanStyle
          ? IconThemeData(
              color: Theme.of(context).brightness == Brightness.light
                  ? Theme.of(context).textTheme.headline1.color
                  : Colors.white, //change your color here
            )
          : null,
      centerTitle: true,
      brightness: brightness ?? Theme.of(context).brightness,
      leading: leading,
      backgroundColor: Colors.transparent,
      elevation: elavation,
      title: setTitleAppBar(
        context,
        title ?? '',
      ),
      actions: actions,
      bottom: bottom,
    );
  }

  static AppBar searchAppBar(
    BuildContext context,
    TextEditingController textController, {
    Widget leading,
    List<Widget> actions,
  }) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //     statusBarColor: Colors.red, statusBarIconBrightness: Brightness.dark));

    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      brightness: Theme.of(context).brightness,
      actions: actions ?? null,
      leading: Icon(
        Icons.arrow_back_ios_rounded,
        color: Theme.of(context).iconTheme.color,
      ),
      actionsIconTheme: IconThemeData(
          color: Theme.of(context).brightness == Brightness.light
              ? Theme.of(context).textTheme.headline1.color
              : Colors.white),
      iconTheme: IconThemeData(
          color: Theme.of(context).brightness == Brightness.light
              ? Theme.of(context).textTheme.headline1.color
              : Colors.white),
      title: Container(
        padding: EdgeInsets.only(right: Dimens.padding),
        child: Column(
          children: [
            Row(children: [
              Expanded(
                child: Container(
                  height: 36.0,
                  child: TelkomselUiTextSearch(
                    controller: textController,
                    placeholder: 'Cari paket favorit kamu ...',
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
      titleSpacing: 0.0,
    );
  }

  // static AppBar bottomSearchAppBar(
  //     {@required TextEditingController searchController,
  //     @required String title,
  //     @required String hintText,
  //     ValueChanged<String> onChanged}) {
  //   return AppBar(
  //       backgroundColor: Colors.white,
  //       bottom: PreferredSize(
  //         preferredSize: Size.fromHeight(60.0),
  //         child: buildSearchField(searchController, hintText, onChanged),
  //       ),
  //       title: TelkomselUiAppBar.setTitleAppBar(context, title));
  // }

  static Widget setTitleAppBar(BuildContext context, String title) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 200),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return SlideTransition(
          child: child,
          position:
              Tween<Offset>(begin: Offset(0.0, 0.5), end: Offset(0.0, 0.0))
                  .animate(animation),
        );
      },
      child: Text(title,
          key: ValueKey<String>(title),
          style: TextStyle(
            // fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: cleanStyle
                ? Theme.of(context).brightness == Brightness.light
                    ? Color(0xff303030)
                    : Colors.white
                : null,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis),
    );
  }

  static Widget buildSearchField(TextEditingController searchController,
      String hintText, ValueChanged<String> onChanged) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
      height: 40.0,
      decoration: BoxDecoration(
          color: Color(0xffFAFAFA),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0)),
      child: TextField(
        controller: searchController,
        autofocus: false,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Color(0xff828282),
            ),
            hintText: hintText,
            border: InputBorder.none,
            hintStyle:
                TextStyle(color: Color(0xff828282), fontSize: 12, height: 2.2),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0)),
        style: TextStyle(color: Colors.black, fontSize: 16.0),
        onChanged: onChanged,
      ),
    );
  }
}

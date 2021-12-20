library telkomsel_ui;

export 'package:telkomsel_ui/config/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'config/config.dart';
import 'screen/screen.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';

class TelkomselUi extends StatefulWidget {
  TelkomselUi({Key key}) : super(key: key);

  @override
  _TelkomselUiState createState() => _TelkomselUiState();
}

class _TelkomselUiState extends State<TelkomselUi> {
  ThemeMode themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    final Routes route = Routes();
    final Styles styles = Styles();
    final Themes themes = Themes();

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));

    final PageController controller = PageController(initialPage: 0);

    return MaterialApp(
      title: 'Telkomsel UI',
      onGenerateRoute: route.generateRoute,
      theme: themes.getTheme(isLight: true),
      darkTheme: themes.getTheme(),
      themeMode: themeMode,
      home: Scaffold(
        floatingActionButton: ThemeSwitcher(
          clipper: ThemeSwitcherCircleClipper(),
          builder: (context) {
            return FloatingActionButton(
              onPressed: () {
                setState(() {
                  themeMode = Theme.of(context).brightness == Brightness.light
                      ? ThemeMode.dark
                      : ThemeMode.light;
                });
              },
              child: const Icon(Icons.palette),
            );
          },
        ),
        body: GestureDetector(
          // Clear text focus
          onTap: () => FocusScope.of(context).unfocus(),
          child: PageView(
            scrollDirection: Axis.horizontal,
            controller: controller,
            children: const <Widget>[
              Splash(),
              Login(),
              Verification(),
              Home(),
              InternetPackage(),
              InternetPackageSearch(),
              DetailPackage(),
              PaymentMethod(),
              SuccessTransaction(),
              NoInternet(),
              InternetSos(),
              // SliverHideTitle(),
              // SliverLeft(),
              // SliverStagged(),
            ],
          ),
        ),
      ),
    );
  }
}

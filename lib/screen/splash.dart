import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../config/config.dart';
import '../constants/constants.dart';

class Splash extends StatelessWidget {
  const Splash({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.Primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 97,
              width: 97,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(Images.Logo))),
            ),
            SvgPicture.asset(
              Images.MyTelkomsel,
              matchTextDirection: true,
              fit: BoxFit.cover,
              height: 14.66,
              width: 94.1,
            ),
          ],
        ),
      ),
    );
  }
}

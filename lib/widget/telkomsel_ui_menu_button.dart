import 'package:flutter/material.dart';
import '../constants/constants.dart';

class TelkomselUiMenuButton extends StatelessWidget {
  final String text;
  final String imageSvg;
  final Function onTap;

  TelkomselUiMenuButton(this.text, this.imageSvg, {Key key, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 100,
        width: 80,
        child: Column(
          children: [
            Container(
              height: 53,
              width: 53,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Palette.Yellow.withOpacity(.1),
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imageSvg), fit: BoxFit.scaleDown),
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

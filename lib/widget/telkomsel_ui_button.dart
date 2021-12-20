import 'package:flutter/material.dart';
import '../constants/constants.dart';

class TelkomselUiButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final bool invert;

  TelkomselUiButton(this.text, {Key key, this.onTap, this.invert = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 42,
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: invert ? Palette.Primary : Palette.Primary),
          color: !invert ? Palette.Primary : Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: invert ? Palette.Primary : Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TelkomselUiButtonSosmed extends StatelessWidget {
  final String text;
  final Color color;
  final Widget leading;
  final Function onTap;

  TelkomselUiButtonSosmed(this.text, this.color,
      {Key key, this.onTap, this.leading})
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
          border: Border.all(color: color),
          color: Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leading != null) ...[leading, SizedBox(width: 8)],
            Text(
              text,
              style: TextStyle(color: color, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

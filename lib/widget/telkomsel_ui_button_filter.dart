import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'package:flutter/gestures.dart';

class TelkomselUiButtonFilter extends StatefulWidget {
  final String text;
  final IconData icon;
  final Function(bool isActive) onTap;

  TelkomselUiButtonFilter(this.text, {Key key, @required this.onTap, this.icon})
      : super(key: key);

  @override
  _TelkomselUiButtonFilterState createState() =>
      _TelkomselUiButtonFilterState();
}

class _TelkomselUiButtonFilterState extends State<TelkomselUiButtonFilter> {
  bool isActives = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isActives = !isActives;
          widget.onTap(isActives);
        });
      },
      child: Container(
        height: 36,
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          // border: Border.all(color: Palette.Primary),
          color: Theme.of(context).dividerColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.icon != null) ...[
              Icon(
                widget.icon,
                color: isActives ? Palette.Primary : Palette.GreyDark,
              ),
            ],
            SizedBox(width: 8),
            Text(
              widget.text,
              style: TextStyle(
                color: isActives ? Palette.Primary : Palette.GreyDark,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

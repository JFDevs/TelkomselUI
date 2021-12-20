import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'package:flutter/gestures.dart';

class TelkomselUiChips extends StatelessWidget {
  TelkomselUiChips({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6,
      width: 62,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Theme.of(context).dividerColor,
      ),
    );
  }
}

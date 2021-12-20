import 'package:flutter/material.dart';
import '../constants/constants.dart';

class TelkomselUiTitleContent extends StatelessWidget {
  final String title;
  final String action;
  final String subtitle;

  TelkomselUiTitleContent(this.title, {Key key, this.action, this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
      child: Column(
        children: [
          SizedBox(height: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              if (action != null) ...[
                Text(
                  action,
                  style: TextStyle(
                      color: Palette.Primary, fontWeight: FontWeight.w500),
                ),
              ]
            ],
          ),
          if (subtitle != null) ...[
            SizedBox(height: 10),
            Text(
              subtitle,
            ),
          ],
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

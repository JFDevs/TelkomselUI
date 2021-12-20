import 'package:flutter/material.dart';
import '../constants/constants.dart';

class TelkomselUiCardPacket extends StatelessWidget {
  final String title;
  final String value;
  final String type;
  final Function onTap;

  TelkomselUiCardPacket(this.title, this.value, this.type,
      {Key key, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 69,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).highlightColor,
              blurRadius: 2,
              offset: Offset(0, 0),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  value,
                  style: TextStyle(
                      fontSize: 20,
                      color: Palette.Primary,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 4),
                Text(
                  type,
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

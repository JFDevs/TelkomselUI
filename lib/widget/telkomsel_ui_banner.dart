import 'package:flutter/material.dart';
import '../constants/constants.dart';

class TelkomselUiBanner extends StatelessWidget {
  final String title;
  final String image;
  final double width;
  final Function onTap;

  TelkomselUiBanner(this.title, {Key key, this.onTap, this.image, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? 248,
        margin: EdgeInsets.only(top: 9, bottom: 9, right: 12),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).highlightColor,
                blurRadius: 5,
                offset: Offset(0, 2)),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 112,
              width: width ?? 248,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(4)),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
            SizedBox(height: 12),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 7),
              width: width ?? 248,
              height: 40,
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

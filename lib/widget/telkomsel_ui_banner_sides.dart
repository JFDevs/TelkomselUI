import 'package:flutter/material.dart';
import '../constants/constants.dart';

class TelkomselUiBannerSides extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final List<Color> color;
  final Function onTap;

  TelkomselUiBannerSides(this.title, this.subTitle,
      {Key key, this.onTap, this.color, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 248,
        padding: EdgeInsets.symmetric(vertical: 9, horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          gradient: LinearGradient(
            colors: color ??
                [
                  Color(0xffE52D27),
                  Color(0xffB31217),
                ],
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 81,
              width: 82,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image))),
            ),
            SizedBox(width: 10),
            Container(
              width: 132,
              height: 165,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      height: 1.1,
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 4),
                  Container(
                    // height: 28,
                    child: Text(
                      subTitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

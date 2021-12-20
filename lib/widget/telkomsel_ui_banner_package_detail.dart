import 'package:flutter/material.dart';
import '../constants/constants.dart';

class TelkomselUiBannerPackageDetail extends StatelessWidget {
  final Function onTap;
  final String packetSize;
  final String lifetime;
  final String packageDetail;
  final String packetName;
  TelkomselUiBannerPackageDetail(
      this.packetName, this.packetSize, this.lifetime, this.packageDetail,
      {Key key, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 9, horizontal: 12),
        // margin: EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).highlightColor),
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$packetName $packetSize",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              packageDetail,
              maxLines: 2,
              style: TextStyle(fontSize: 12, color: Palette.GreyDark),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.timer_rounded, color: Palette.Primary, size: 17),
                SizedBox(width: 10),
                Text(
                  "Masa aktif $lifetime",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Palette.Primary, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

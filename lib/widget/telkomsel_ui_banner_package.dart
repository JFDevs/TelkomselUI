import 'package:flutter/material.dart';
import '../constants/constants.dart';

class TelkomselUiBannerPackage extends StatelessWidget {
  final Function onTap;
  final String packetSize;
  final String lifetime;
  final String disconPrice;
  final String normalPrice;
  final String packetName;
  final bool rightPadding;
  final bool expanded;
  TelkomselUiBannerPackage(
      this.packetName, this.packetSize, this.lifetime, this.normalPrice,
      {Key key,
      this.onTap,
      this.disconPrice,
      this.rightPadding = true,
      this.expanded = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: expanded ? null : 248,
        padding: EdgeInsets.symmetric(vertical: 9, horizontal: 12),
        margin: EdgeInsets.only(right: rightPadding ? 12 : 0),
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
                Row(
                  children: [
                    Text(
                      packetSize,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: Dimens.padding),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                      decoration: BoxDecoration(
                          color: Palette.InputBorderColor.withOpacity(.2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Icon(Icons.timer_rounded,
                              color: Palette.GreyDark, size: 13),
                          SizedBox(width: 4),
                          Text(
                            lifetime,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Palette.GreyDark,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Icon(Icons.bookmark, color: Palette.InputBorderColor),
              ],
            ),
            SizedBox(height: 20),
            if (disconPrice != null) ...[
              Text(
                disconPrice,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontSize: 12,
                    color: Palette.InputBorderColor),
              ),
            ],
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  normalPrice,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 18,
                      color: Palette.Primary,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  packetName,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

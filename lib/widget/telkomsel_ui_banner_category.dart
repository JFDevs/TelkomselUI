import 'package:flutter/material.dart';
import '../constants/constants.dart';

Iterable<MapEntry<int, T>> enumerate<T>(Iterable<T> items) sync* {
  int index = 0;
  for (T item in items) {
    yield MapEntry(index, item);
    index = index + 1;
  }
}

class TelkomselUiBannerCategory extends StatelessWidget {
  final List<String> category;
  TelkomselUiBannerCategory(this.category, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: enumerate(category)
              .map((e) => e.key % 2 == 0 ? wContent(e.value) : Container())
              .toList(),
        ),
        SizedBox(height: 12),
        Row(
          children: enumerate(category)
              .map((e) => e.key % 2 == 1 ? wContent(e.value) : Container())
              .toList(),
        )
      ],
    );

    return SizedBox(
      height: 134,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
        scrollDirection: Axis.horizontal,
        children: [content],
      ),
    );
  }

  Widget wContent(String title) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 139,
        height: 60,
        padding: EdgeInsets.symmetric(vertical: 9, horizontal: 12),
        margin: EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient: LinearGradient(
            colors: [
              Color(0xffE52D27),
              Color(0xffB31217),
            ],
          ),
        ),
        child: Text(
          title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';

class TelkomselUiHtml extends StatelessWidget {
  final String text;
  TelkomselUiHtml(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Html(
            data: text,
            onLinkTap: (url) {
              // launchExternal(url);
              print(url);
            },
            style: {
              "body": Style(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
              ),
              "p": Style(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
              ),
              "li": Style(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                // backgroundColor: Colors.red,
              ),
              "a": Style(
                color: Palette.Primary,
                textDecoration: TextDecoration.none,
              ),
              "html": Style(
                margin: EdgeInsets.all(0),
              ),
            }),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

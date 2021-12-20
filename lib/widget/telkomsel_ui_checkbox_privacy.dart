import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/constants.dart';
import 'package:flutter/gestures.dart';

class TelkomselUiCheckboxPrivacy extends StatefulWidget {
  TelkomselUiCheckboxPrivacy({Key key}) : super(key: key);

  @override
  _TelkomselUiCheckboxPrivacyState createState() =>
      _TelkomselUiCheckboxPrivacyState();
}

class _TelkomselUiCheckboxPrivacyState
    extends State<TelkomselUiCheckboxPrivacy> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 25,
          width: 16,
          child: Checkbox(
            checkColor: Colors.white,
            activeColor: Palette.Primary,
            value: isCheck,
            onChanged: (bool value) {
              setState(() {
                isCheck = !isCheck;
              });
            },
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            child: RichText(
              text: TextSpan(
                text: 'Saya menyetujui ',
                style: TextStyle(
                  fontFamily: GoogleFonts.ptSans().fontFamily,
                  color: Theme.of(context).unselectedWidgetColor,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'syarat, ketentuan ',
                    style: TextStyle(
                        color: Palette.Primary, fontWeight: FontWeight.w700),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        // await launchExternal('tel:082149091899');
                      },
                  ),
                  TextSpan(text: 'dan '),
                  TextSpan(
                    text: 'privasi ',
                    style: TextStyle(
                        color: Palette.Primary, fontWeight: FontWeight.w600),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        // await launchExternal('tel:082149091899');
                      },
                  ),
                  TextSpan(text: 'Telkomsel '),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

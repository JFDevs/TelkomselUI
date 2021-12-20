import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../config/config.dart';
import '../constants/constants.dart';
import '../widget/widget.dart';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark));

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(Dimens.padding),
        children: [
          SizedBox(height: 52),

          // LOGO
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 182,
                width: 182,
                child: Container(
                  padding: EdgeInsets.all(44),
                  decoration: BoxDecoration(
                    color: Palette.GreyDark.withOpacity(.2),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Palette.GreyDark.withOpacity(.5),
                    ),
                  ),
                ),
              ),
            ],
          ),

          //
          SizedBox(height: 52),
          Text(
            """Oops...\nTidak ada Internet!""",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          ),
          SizedBox(height: 12),
          Text(
            'Eits.. Tenang, kamu masih bisa mengakses aplikasi MyTelkomsel menggunakan layanan baru kami Internet SOS. Tertarik ?',
            style: TextStyle(),
          ),

          SizedBox(height: 32),
          TelkomselUiCheckboxPrivacy(),
          SizedBox(height: 16),

          TelkomselUiButton('LANJUTKAN'),
          SizedBox(height: 12),
          TelkomselUiButton('LAIN KALI', invert: true),
          SizedBox(height: 52),
        ],
      ),
    );
  }
}

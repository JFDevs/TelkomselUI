import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../config/config.dart';
import '../constants/constants.dart';
import '../widget/widget.dart';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';

class Verification extends StatelessWidget {
  const Verification({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));

    return Scaffold(
      appBar: TelkomselUiAppBar.defaultAppBar(
          context: context, leading: Icon(Icons.arrow_back_ios_rounded)),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(Dimens.padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  Images.Person2,
                  matchTextDirection: true,
                  fit: BoxFit.cover,
                  height: 147.98,
                  width: 133.63,
                ),
                SizedBox(height: 46.37),
                //
                Text(
                  'Masukan kode unik yang kami kirim',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 24),
                //
                Text(
                  'Silahkan periksa SMS kamu dan masukan kode unik yang kami kirimkan ke 081290112333',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                //
                SizedBox(height: 24),
                TelkomselUiTextInput(
                  label: 'Kode Unik',
                  placeholder: 'Cth. q5TsgH***',
                ),
                SizedBox(height: 16),
                //
                RichText(
                  text: TextSpan(
                    text: 'Tidak menerima SMS ?  ',
                    style: TextStyle(
                        // fontFamily: Fonts.productSans,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).unselectedWidgetColor),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Kirim ulang',
                        style: TextStyle(
                            color: Palette.Primary,
                            fontWeight: FontWeight.w700),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            // await launchExternal('tel:082149091899');
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../config/config.dart';
import '../constants/constants.dart';
import '../widget/widget.dart';
import 'package:flutter/services.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark));

    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(Dimens.padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32),
                SvgPicture.asset(
                  Images.Person,
                  matchTextDirection: true,
                  fit: BoxFit.cover,
                  height: 147.98,
                  width: 133.63,
                ),
                SizedBox(height: 46.37),
                //
                Text(
                  'Silahkan masuk dengan nomor telkomsel kamu',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 24),
                //
                TelkomselUiTextInput(
                  label: 'Nomor Hp',
                  placeholder: 'Cth. 08129011xxxx',
                ),
                SizedBox(height: 16),
                //
                TelkomselUiCheckboxPrivacy(),
                SizedBox(height: 32),
                //
                TelkomselUiButton(
                  'LANJUT',
                  onTap: () {
                    print('TAP');
                  },
                ),
                SizedBox(height: 16),
                //
                Center(
                  child: Text(
                    'Atau masuk menggunakan',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Palette.GreyDark),
                  ),
                ),
                SizedBox(height: 16),
                //
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: TelkomselUiButtonSosmed(
                          'Facebook',
                          Color(0xff3B5998),
                          leading: SvgPicture.asset(
                            Images.FacebookLogo,
                            matchTextDirection: true,
                            fit: BoxFit.cover,
                            height: 18,
                            width: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: 21),
                      Expanded(
                        child: TelkomselUiButtonSosmed(
                          'Twitter',
                          Color(0xff1DA1F2),
                          leading: SvgPicture.asset(
                            Images.TwitterLogo,
                            matchTextDirection: true,
                            fit: BoxFit.cover,
                            height: 18,
                            width: 18,
                          ),
                        ),
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

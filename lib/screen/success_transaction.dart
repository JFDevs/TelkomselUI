import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../config/config.dart';
import '../constants/constants.dart';
import '../widget/widget.dart';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';

class SuccessTransaction extends StatelessWidget {
  const SuccessTransaction({Key key}) : super(key: key);

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
          SizedBox(height: 52),
          Container(
            padding: EdgeInsets.all(Dimens.padding),
            child: Column(
              children: [
                // SUCCESS LOGO
                Container(
                  padding: EdgeInsets.all(44),
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Palette.Primary.withOpacity(.2),
                    borderRadius: BorderRadius.circular(160),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Palette.Primary,
                      borderRadius: BorderRadius.circular(73),
                    ),
                    child: Icon(
                      Icons.check,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                ),

                //
                SizedBox(height: 52),
                Text(
                  'Pembayaran Berhasil',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                ),
                SizedBox(height: 12),
                Text(
                  'Pembayaran paket internet telah berhasil. Kami akan memberitahu kamu jika paket sudah diaktifkan.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Palette.GreyDark),
                ),

                //
                SizedBox(height: 32),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
                  child: Column(
                    children: [
                      TelkomselUiBannerPackageDetail(
                        'Internet OMG!',
                        '14 GB',
                        '30 Hari',
                        '4.5 GB Internet + 2 GB OMG! + 60 SMS Tsel + 100 Mins Voice Tsel',
                      ),
                    ],
                  ),
                ),

                //
                SizedBox(height: 52),
                Text(
                  'NO. TRANSAKSI',
                  style: TextStyle(),
                ),
                SizedBox(height: 12),
                Text('A3012005123095554710745810',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),

                SizedBox(height: 52),

                TelkomselUiButton('DETAIL TRAKSAKSI'),
                SizedBox(height: 12),
                TelkomselUiButton('LIHAT PAKET', invert: true),
                SizedBox(height: 12),
                TelkomselUiButton('KEMBALI KE BERANDA', invert: true),

                SizedBox(height: 52),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

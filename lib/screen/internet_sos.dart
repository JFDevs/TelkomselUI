import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../widget/widget.dart';
import 'package:flutter/services.dart';

class InternetSos extends StatelessWidget {
  const InternetSos({Key key}) : super(key: key);

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

          //
          SizedBox(height: 32),
          Text(
            "Ketentuan Internet SOS",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          ),
          TelkomselUiHtml("""<div>
              <ol>
                  <li>Kamu dapat menggunakan <b>Internet SOS</b> hanya ketika kuota internet Telkomsel kamu kosong.</li>
                  <li><b>Internet SOS</b> hanya bisa digunakan untuk mengakses aplikasi MyTelkomsel.</li>
                  <li><b>Internet SOS</b> tidak ada batas jumlah penggunaan bandwidth.</li>
                  <li>Batas waktu penggunaan <b>Internet SOS</b> hanya dalam kurun waktu <b>1 x 24 Jam (1 Hari)</b>.</li>
                  <li>Tagihan akan diberikan setelah Anda memiliki kuota internet Telkomsel.</li>
                  <li>Batas waktu pelunasan tagihan penggunaan <b>Internet SOS</b> selama <b>2 x 24 Jam (2 Hari)</b> terhitung dari penyerahan tagihan.</li>
                  <li>Jika tagihan belum dilunasi dalam waktu yang ditentukan akan dilakukan <b>pemotongan pada kuota internet yang tersedia</b></li>
                </ol>
            </div>"""),

          SizedBox(height: 32),

          TelkomselUiButton('MENGERTI'),
          SizedBox(height: 12),
          TelkomselUiButton('PERTANYAAN', invert: true),
          SizedBox(height: 52),
        ],
      ),
    );
  }
}

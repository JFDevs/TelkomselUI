import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../config/config.dart';
import '../constants/constants.dart';
import '../widget/widget.dart';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';

class DetailPackage extends StatelessWidget {
  const DetailPackage({Key key}) : super(key: key);

  Widget wRincianDetil(String text, String subText) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Text(
            subText,
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.red, statusBarIconBrightness: Brightness.dark));

    final _textLanguageController = TextEditingController();

    return Scaffold(
      appBar: TelkomselUiAppBar.searchAppBar(context, _textLanguageController,
          actions: [
            Container(
              padding: EdgeInsets.only(right: Dimens.padding),
              child: Icon(
                Icons.share,
              ),
            ),
          ]),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.all(Dimens.padding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Combo OMG!',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Icon(Icons.bookmark, color: Palette.InputBorderColor),
                        ],
                      ),
                      SizedBox(height: 14),
                      Text(
                        '6.5 GB',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 32),
                      Text(
                        'Rp63.000',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 12,
                            color: Palette.InputBorderColor),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Rp61.000',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 18,
                            color: Palette.Primary,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                //
                Divider(
                  thickness: 10,
                ),
                //
                Container(
                  padding: EdgeInsets.all(Dimens.padding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Masa Aktif Paket',
                          style: TextStyle(fontWeight: FontWeight.w700)),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                        height: 36,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: Palette.ScaffoldBg),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.timer_sharp,
                                    size: 15, color: Palette.Primary),
                                SizedBox(width: 4),
                                Text(
                                  '30 HARI',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                      color: Palette.Primary),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //
                Divider(
                  thickness: 10,
                ),
                //
                TelkomselUiTitleContent('Rincian Paket'),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
                  child: Column(
                    children: [
                      wRincianDetil('Internet', '4.5 GB'),
                      wRincianDetil('OMG!', '2 GB'),
                      wRincianDetil('SMS Tsel', '60 SMS'),
                      wRincianDetil('Voice Tsel', '100 Mins'),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                //
                Divider(
                  thickness: 10,
                ),
                TelkomselUiTitleContent('Deksripsi Paket'),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
                  child: TelkomselUiHtml("""<html><body>
                  <p>Paket Internet OMG! berlaku untuk 30 hari, dengan rincian kuota:</p>
                  <div>
                      <ul>
                          <li>Kuota Internet dengan akses di semua jaringan (2G/3G/4G).</li>
                          <li>Kuota Nelpon ke Sesama Telkomsel</li>
                          <li>Kuota 2 GB OMG! untuk akses Youtube, Facebook, Instagram, MAXstream, Viu, iFlix, Klik Film, Bein Sport, dan Nickelodeon Play berlaku 30 hari.</li>
                          <li>Termasuk berlangganan 30 hari.</li>
                        </ul>
                    </div></body></html>"""),
                ),
                //
                Divider(
                  thickness: 10,
                ),
                TelkomselUiTitleContent('Syarat dan Ketentuan'),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
                  child: TelkomselUiHtml("""<html><body><div>
                      <ol>
                          <li>Paket berlaku hanya untuk pemakaian dalam negeri (Tidak berlaku untuk pemakaian luar negeri).</li>
                          <li>Setelah melewati volume yang disediakan, pelanggan akan dikenakan tarif normal.</li>
                          <li>Kuota internet lokal hanya dapat digunakan di lokasi pelanggan melakukan aktivasi paket.</li>
                        </ol>
                        </br>
                        </br>
                        <b><a href="www.google.com">Selengkapnya<a/></b>
                    </div></body></html>"""),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

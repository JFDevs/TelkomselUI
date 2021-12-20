import 'package:flutter/material.dart';
import '../widget/clipper/clipper.dart';
import '../widget/animation/animation.dart';
import '../config/config.dart';
import '../constants/constants.dart';
import '../widget/widget.dart';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark));

    return Scaffold(
      backgroundColor: Theme.of(context).highlightColor,
      body: ListView(
        padding: EdgeInsets.all(0),
        children: [
          wHeader(context),
          SizedBox(height: 8),
          wContent(context),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomBarItem(context),
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Theme.of(context).unselectedWidgetColor,
        selectedItemColor: Palette.Primary,
        showUnselectedLabels: true,
        // onTap: _onItemTapped,
      ),
    );
  }

  Widget wContent(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // KATEGORI PAKET
          TelkomselUiTitleContent('Kategori Paket'),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                TelkomselUiMenuButton('Internet', Images.internet),
                TelkomselUiMenuButton('Telpon', Images.telpon),
                TelkomselUiMenuButton('SMS', Images.sms),
                TelkomselUiMenuButton('Roaming', Images.roaming),
                TelkomselUiMenuButton('Hiburan', Images.hiburan),
                TelkomselUiMenuButton('Unggulan', Images.unggulan),
                TelkomselUiMenuButton('Tersimpan', Images.tersimpan),
                TelkomselUiMenuButton('Riwayat', Images.riwayat),
              ],
            ),
          ),

          // Terbaru dari Telkomsel
          TelkomselUiTitleContent('Terbaru dari Telkomsel',
              action: 'Lihat Semua'),
          SizedBox(
            height: 100,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
              scrollDirection: Axis.horizontal,
              children: [
                TelkomselUiBannerSides(
                  'Internet OMG',
                  'Bisa Youtuban dan Sosmed',
                  image: "${Images.TelkomselUiPath}/banner1.png",
                  color: [
                    Color(0xffFF512F),
                    Color(0xffDD2476),
                  ],
                ),
                SizedBox(width: 10),
                TelkomselUiBannerSides(
                  'Undian Ketengan',
                  'Beli kuota Ketengan',
                  image: "${Images.TelkomselUiPath}/banner2.png",
                  color: [
                    Color(0xff4776E6),
                    Color(0xff8E54E9),
                  ],
                ),
              ],
            ),
          ),

          // Tanggapan COVID-19
          TelkomselUiTitleContent('Tanggapan COVID-19'),
          SizedBox(
            height: 190,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
              scrollDirection: Axis.horizontal,
              children: [
                TelkomselUiBanner(
                  'Diskon Spesial 25%',
                  image: "${Images.TelkomselUiPath}/banner3.png",
                ),
                TelkomselUiBanner(
                  'Bebas Kuota Akses Layanan Kesehatan',
                  image: "${Images.TelkomselUiPath}/banner4.png",
                ),
              ],
            ),
          ),

          // AYO! Pake LinkAja!
          TelkomselUiTitleContent('AYO! Pake LinkAja!',
              subtitle:
                  'Pakai LinkAja untuk beli pulsa, beli paket data dan bayar tagihan lebih mudah.'),
          SizedBox(
            height: 190,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
              scrollDirection: Axis.horizontal,
              children: [
                TelkomselUiBanner(
                  'Bayar Serba Cepat',
                  image: "${Images.TelkomselUiPath}/banner9.png",
                  width: 145,
                ),
                TelkomselUiBanner(
                  'Cukup Snap QR',
                  image: "${Images.TelkomselUiPath}/banner10.png",
                  width: 145,
                ),
                TelkomselUiBanner(
                  'NO! Credit Card',
                  image: "${Images.TelkomselUiPath}/banner11.png",
                  width: 145,
                ),
              ],
            ),
          ),

          // Cari Voucher, Yuk!
          TelkomselUiTitleContent('Cari Voucher, Yuk!', action: 'Lihat Semua'),
          SizedBox(
            height: 190,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
              scrollDirection: Axis.horizontal,
              children: [
                TelkomselUiBanner(
                  'Double Benefits from DOUBLE UNTUNG',
                  image: "${Images.TelkomselUiPath}/banner5.png",
                ),
                TelkomselUiBanner(
                  'Join Undi-Undi Hepi 2020!',
                  image: "${Images.TelkomselUiPath}/banner6.png",
                ),
              ],
            ),
          ),

          // Penawaran Khusus
          TelkomselUiTitleContent('Penawaran Khusus', action: 'Lihat Semua'),
          SizedBox(
            height: 190,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
              scrollDirection: Axis.horizontal,
              children: [
                TelkomselUiBanner(
                  'Terus Belajar dari Rumahmu dengan Ruangguru!',
                  image: "${Images.TelkomselUiPath}/banner7.png",
                ),
                TelkomselUiBanner(
                  'Belajar Kini Makin Mudah dengan Paket ilmupedia!',
                  image: "${Images.TelkomselUiPath}/banner8.png",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget wHeader(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Stack(
        children: [
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              height: 229,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Palette.Primary,
                boxShadow: [
                  BoxShadow(
                      color: Colors.red, blurRadius: 20, offset: Offset(2, 2)),
                ],
              ),
            ),
          ),
          //HEADER
          FadeAnimation(
            0.5,
            Column(
              children: [
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: Dimens.padding, horizontal: Dimens.padding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hai, Ahmad Juhdi',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.qr_code_rounded,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: Dimens.padding),
                    child: Column(
                      children: [
                        //CARD
                        TelkomselUiCreditCard(
                          Colors.blue,
                          'validThru',
                          'cardNumber',
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(
                                child: TelkomselUiCardPacket(
                                    'Internet', '12.19', 'GB')),
                            SizedBox(width: 16),
                            Expanded(
                                child: TelkomselUiCardPacket(
                                    'Telpon', '0', 'Min')),
                            SizedBox(width: 16),
                            Expanded(
                                child:
                                    TelkomselUiCardPacket('SMS', '23', 'SMS')),
                          ],
                        ),
                        SizedBox(height: 25),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ///List bottom menu
  List<BottomNavigationBarItem> _bottomBarItem(BuildContext context) {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.home_filled),
        label: 'Beranda',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.access_time_outlined),
        label: 'Riwayat',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.help_outline_outlined),
        label: 'Bantuan',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.inbox_outlined),
        label: 'Inbox',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Akun Saya',
      ),
    ];
  }
}

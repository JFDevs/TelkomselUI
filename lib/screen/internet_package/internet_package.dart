import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../config/config.dart';
import '../../constants/constants.dart';
import '../../widget/widget.dart';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';

class InternetPackage extends StatelessWidget {
  const InternetPackage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));

    final _textLanguageController = TextEditingController();

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor:
            Theme.of(context).primaryColor, //i like transaparent :-)
        systemNavigationBarColor: Colors.grey, // navigation bar color
        statusBarIconBrightness: Brightness.dark, // status bar icons' color
        systemNavigationBarIconBrightness:
            Brightness.dark, //navigation bar icons' color
      ),
      // value: Theme.of(context).brightness == Brightness.dark
      //     ? SystemUiOverlayStyle.light
      //     : SystemUiOverlayStyle.light,
      child: Scaffold(
        appBar: TelkomselUiAppBar.defaultAppBar(
            context: context,
            leading: Icon(Icons.arrow_back_ios_rounded),
            title: 'Paket Internet'),
        // appBar: TelkomselUiAppBar.searchAppBar(context, _textLanguageController),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(Dimens.padding),
              child: TelkomselUiTextSearch(
                controller: _textLanguageController,
                placeholder: 'Cari paket favorit kamu ...',
              ),
            ),
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

            // Langganan Kamu
            TelkomselUiTitleContent('Langganan Kamu'),
            SizedBox(
              height: 116,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
                scrollDirection: Axis.horizontal,
                children: [
                  TelkomselUiBannerPackage(
                      'Internet OMG!', '14 GB', '30 Hari', 'Rp96.000',
                      disconPrice: 'Rp99.000'),
                  TelkomselUiBannerPackage(
                    'iPhone Plan',
                    '27 GB',
                    '30 Hari',
                    'Rp133.000',
                    disconPrice: 'Rp145.000',
                  ),
                ],
              ),
            ),

            // Kategori
            TelkomselUiTitleContent('Kategori', action: 'Lihat Semua'),
            TelkomselUiBannerCategory([
              'MyTelkomsel Reward',
              'Paket Conference',
              'Internet Mingguan',
              'Combo SAKTI',
              'Internet Mingguan',
              'iPhone Plan',
              'Last',
            ]),

            // Popular
            TelkomselUiTitleContent('Popular'),
            SizedBox(
              height: 116,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
                scrollDirection: Axis.horizontal,
                children: [
                  TelkomselUiBannerPackage(
                      'Internet OMG!', '14 GB', '30 Hari', 'Rp96.000',
                      disconPrice: 'Rp99.000'),
                  TelkomselUiBannerPackage(
                    'Kuota Keluarga',
                    '20 GB',
                    '30 Hari',
                    'Rp153.000',
                  ),
                ],
              ),
            ),

            // Belajar #dirumahaja
            TelkomselUiTitleContent('Belajar #dirumahaja'),
            SizedBox(
              height: 116,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
                scrollDirection: Axis.horizontal,
                children: [
                  TelkomselUiBannerPackage(
                      'Ruang Guru', '30 GB', '30 Hari', 'FREE'),
                  TelkomselUiBannerPackage(
                      'Ilmupedia', '30 GB', '30 Hari', 'FREE'),
                ],
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

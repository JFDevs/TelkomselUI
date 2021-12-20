import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../config/config.dart';
import '../constants/constants.dart';
import '../widget/widget.dart';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));

    return Scaffold(
      appBar: TelkomselUiAppBar.defaultAppBar(
          context: context,
          leading: Icon(Icons.arrow_back_ios_rounded),
          title: 'Metode Pembayaran'),
      body: Stack(
        children: [
          ListView(
            children: [
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
              // Pembayaran di MyTelkomsel
              TelkomselUiTitleContent('Pembayaran di MyTelkomsel'),
              Container(
                padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
                child: TelkomselUiRadio([
                  TelkomselUiRadioModel(
                    id: 1,
                    name: "Pulsa",
                    subTitle: 'Rp12.0000',
                    leading: Icon(Icons.account_balance_wallet_outlined),
                  ),
                  TelkomselUiRadioModel(
                    id: 2,
                    name: "Link Aja",
                    subTitle: 'Rp76.000',
                    leading: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "${Images.TelkomselUiPath}/logo_link_aja.png"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ]),
              ),
              SizedBox(height: 18),
              Divider(
                thickness: 10,
              ),

              // E-Wallet
              TelkomselUiTitleContent('E-Wallet'),
              Container(
                padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
                child: TelkomselUiRadio([
                  TelkomselUiRadioModel(
                    id: 1,
                    name: "Gopay",
                    leading: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "${Images.TelkomselUiPath}/logo_gopay.png"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  TelkomselUiRadioModel(
                    id: 2,
                    name: "OVO",
                    leading: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "${Images.TelkomselUiPath}/logo_ovo.png"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  TelkomselUiRadioModel(
                    id: 3,
                    name: "Link Aja",
                    leading: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "${Images.TelkomselUiPath}/logo_link_aja.png"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ]),
              ),

              SizedBox(height: 120),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(Dimens.padding),
              height: 120,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Pembayaran',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Rp61.000',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Palette.Primary),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  TelkomselUiButton('KONFIRMASI & BAYAR'),
                ],
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).highlightColor,
                      blurRadius: 10,
                      offset: Offset(0, -2)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

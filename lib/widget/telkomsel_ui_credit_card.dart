import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/constants.dart';
import '../config/config.dart';

class TelkomselUiCreditCard extends StatelessWidget {
  final String cardNumber;
  final String validThru;
  final Color color;
  final Function onTap;

  TelkomselUiCreditCard(this.color, this.validThru, this.cardNumber,
      {Key key, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 187,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              Color(0xffE52D27),
              Color(0xffB31217),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '081290112333',
                    style: TextStyle(
                        letterSpacing: 2.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Container(
                    height: 15,
                    width: 84,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Images.SimpatiLogo))),
                  ),
                ],
              ),
            ),
            //SISA PULSA
            SizedBox(height: 21),
            Container(
              padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sisa Pulsa Anda',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rp34.000',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                      Container(
                        height: 34,
                        width: 84,
                        decoration: BoxDecoration(
                          color: Palette.Yellow,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text(
                            'Isi Pulsa',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Divider
            Divider(
              color: Color(0xff1E272E).withOpacity(.1),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Berlaku sampai ',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '19 April 2020',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          'Telkomsel POIN',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 18,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Palette.Yellow,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Text(
                              '172',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

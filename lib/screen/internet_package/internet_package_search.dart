import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../config/config.dart';
import '../../constants/constants.dart';
import '../../widget/widget.dart';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';

class InternetPackageSearch extends StatelessWidget {
  const InternetPackageSearch({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.red, statusBarIconBrightness: Brightness.dark));

    final _textLanguageController = TextEditingController();

    return Scaffold(
      appBar: TelkomselUiAppBar.searchAppBar(context, _textLanguageController),
      body: Column(
        children: [
          Row(
            children: [],
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.all(Dimens.padding),
                  child: Column(
                    children: [
                      //FILTER
                      Row(
                        children: [
                          TelkomselUiButtonFilter(
                            'Filter',
                            icon: Icons.filter_alt_rounded,
                            onTap: (isActive) {
                              showModalBottomSheet<void>(
                                context: context,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(32),
                                      topRight: Radius.circular(32)),
                                ),
                                builder: (BuildContext context) {
                                  return wFilterSheet(context);
                                },
                              );
                            },
                          ),
                          SizedBox(width: 12),
                          TelkomselUiButtonFilter(
                            'Urutkan',
                            icon: Icons.sort,
                            onTap: (isActive) {
                              showModalBottomSheet<void>(
                                context: context,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(32),
                                      topRight: Radius.circular(32)),
                                ),
                                builder: (BuildContext context) {
                                  return wUrutkanSheet(context);
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      //CONTENT
                      ...[1, 2, 3, 4, 5, 6, 7, 8, 9]
                          .map((e) => Column(
                                children: [
                                  TelkomselUiBannerPackage(
                                    'Internet OMG!',
                                    '14 GB',
                                    '30 Hari',
                                    'Rp133.000',
                                    disconPrice: 'Rp145.000',
                                    rightPadding: false,
                                    expanded: true,
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ))
                          .toList(),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget wUrutkanSheet(BuildContext context) {
    return Container(
      // height: 200,
      // decoration: BoxDecoration(
      //   boxShadow: [
      //     BoxShadow(color: Colors.grey, blurRadius: 16, offset: Offset(0, 0)),
      //   ],
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Center(
            child: TelkomselUiChips(),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
            child: Text('Urutkan',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
          ),
          Divider(color: Theme.of(context).scaffoldBackgroundColor),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
              children: [
                TelkomselUiRadioChecklist([
                  TelkomselUiRadioChecklistModel(id: 1, name: 'Paling Sesuai'),
                  TelkomselUiRadioChecklistModel(id: 2, name: 'Terbaru'),
                  TelkomselUiRadioChecklistModel(id: 3, name: 'Harga Terendah'),
                  TelkomselUiRadioChecklistModel(
                      id: 4, name: 'Harga Tertinggi'),
                ]),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(Dimens.padding),
            height: 100,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 10),
                TelkomselUiButton('SIMPAN'),
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
        ],
      ),
    );
  }

  Widget wFilterSheet(BuildContext context) {
    TextEditingController text1 = TextEditingController();
    TextEditingController text2 = TextEditingController();
    return Container(
      // height: 800,
      // decoration: BoxDecoration(
      //   boxShadow: [
      //     BoxShadow(color: Colors.grey, blurRadius: 16, offset: Offset(0, 0)),
      //   ],
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Center(
            child: TelkomselUiChips(),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
                child: Text('Filter',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
                child: Text(
                  'Hapus',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Palette.Primary),
                ),
              ),
            ],
          ),
          Divider(),
          Expanded(
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
                  child: Row(
                    children: [
                      Expanded(
                        child: TelkomselUiTextInput(
                          label: 'Minimal',
                          controller: text1,
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: TelkomselUiTextInput(
                          label: 'Maksimal',
                          controller: text2,
                        ),
                      ),
                    ],
                  ),
                ),
                //
                TelkomselUiRangeValues(
                  onChanged: (values) {
                    text1.text = values.start.toString();
                    text2.text = values.end.toString();
                  },
                ),
                //
                TelkomselUiSelectChips(
                  [
                    TelkomselUiSelectChipsModel(
                      id: 1,
                      text: '0 - 10rb',
                    ),
                    TelkomselUiSelectChipsModel(
                      id: 2,
                      text: '10rb - 50rb',
                    ),
                    TelkomselUiSelectChipsModel(
                      id: 3,
                      text: '50rb - 100rb',
                    ),
                    TelkomselUiSelectChipsModel(
                      id: 4,
                      text: '100rb - 500rb',
                    ),
                  ],
                  onTap: (values) {
                    text1.text = values.text;
                    text2.text = values.text;
                  },
                ),
                // Kategori
                TelkomselUiTitleContent('Kategori', action: 'Lihat Semua'),
                TelkomselUiSelectChips(
                  [
                    TelkomselUiSelectChipsModel(
                      id: 1,
                      text: 'Combo OMG!',
                    ),
                    TelkomselUiSelectChipsModel(
                      id: 2,
                      text: 'Bebas Akses',
                    ),
                    TelkomselUiSelectChipsModel(
                      id: 3,
                      text: 'iPhone Plan',
                    ),
                    TelkomselUiSelectChipsModel(
                      id: 4,
                      text: 'Sahur Internet',
                    ),
                    TelkomselUiSelectChipsModel(
                      id: 5,
                      text: 'Pendidikan',
                    ),
                    TelkomselUiSelectChipsModel(
                      id: 6,
                      text: 'Internet OMG!',
                    ),
                  ],
                  onTap: (values) {},
                ),

                // Masa Aktif
                TelkomselUiTitleContent('Masa Aktif'),
                TelkomselUiSelectChips(
                  [
                    TelkomselUiSelectChipsModel(
                        id: 1,
                        text: '30 HARI',
                        icon: Icons.access_time_outlined),
                    TelkomselUiSelectChipsModel(
                        id: 2,
                        text: '7 Hari',
                        icon: Icons.access_time_outlined),
                    TelkomselUiSelectChipsModel(
                        id: 3,
                        text: '1 Hari',
                        icon: Icons.access_time_outlined),
                  ],
                  onTap: (values) {},
                ),

                // Penawaran
                TelkomselUiTitleContent('Penawaran'),
                TelkomselUiSelectChips(
                  [
                    TelkomselUiSelectChipsModel(
                      id: 1,
                      text: 'Diskon',
                    ),
                    TelkomselUiSelectChipsModel(
                      id: 2,
                      text: '#dirumahaja',
                    ),
                    TelkomselUiSelectChipsModel(
                      id: 3,
                      text: 'Cashback',
                    ),
                    TelkomselUiSelectChipsModel(
                      id: 4,
                      text: 'POIN',
                    ),
                  ],
                  onTap: (values) {},
                ),

                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
            height: 70,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 10),
                TelkomselUiButton('PASANG FILTER'),
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
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'dart:convert';

class TelkomselUiRadio extends StatefulWidget {
  final List<TelkomselUiRadioModel> radioContent;
  TelkomselUiRadio(this.radioContent, {Key key}) : super(key: key);

  @override
  _TelkomselUiRadioState createState() => _TelkomselUiRadioState();
}

class _TelkomselUiRadioState extends State<TelkomselUiRadio> {
  TextEditingController nameController = TextEditingController();
  int radioValueId = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: widget.radioContent
            .map(
              (e) => InkWell(
                enableFeedback: false,
                onTap: () {
                  setState(() {
                    radioValueId = e.id;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          if (e.leading != null) ...[
                            e.leading,
                          ],
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.name,
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              if (e.subTitle != null) ...[
                                SizedBox(height: 4),
                                Text(e.subTitle),
                              ],
                            ],
                          ),
                        ],
                      ),
                      Radio(
                        value: e.id,
                        groupValue: radioValueId,
                        activeColor: Palette.Primary,
                        onChanged: (data) {
                          setState(() {
                            radioValueId = data;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class TelkomselUiRadioModel {
  TelkomselUiRadioModel({
    this.id,
    this.name,
    this.subTitle,
    this.leading,
  });

  int id;
  String name;
  String subTitle;
  Widget leading;

  factory TelkomselUiRadioModel.fromRawJson(String str) =>
      TelkomselUiRadioModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TelkomselUiRadioModel.fromJson(Map<String, dynamic> json) =>
      TelkomselUiRadioModel(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        subTitle: json["subTitle"] == null ? null : json["subTitle"],
        leading: json["leading"] == null ? null : json["leading"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "subTitle": subTitle == null ? null : subTitle,
        "leading": leading == null ? null : leading,
      };
}

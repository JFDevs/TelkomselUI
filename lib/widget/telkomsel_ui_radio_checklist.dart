import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'dart:convert';

class TelkomselUiRadioChecklist extends StatefulWidget {
  final List<TelkomselUiRadioChecklistModel> radioContent;
  TelkomselUiRadioChecklist(this.radioContent, {Key key}) : super(key: key);

  @override
  _TelkomselUiRadioChecklistState createState() =>
      _TelkomselUiRadioChecklistState();
}

class _TelkomselUiRadioChecklistState extends State<TelkomselUiRadioChecklist> {
  TextEditingController nameController = TextEditingController();
  int radioValueId = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: widget.radioContent
            .map((e) => Column(
                  children: [
                    InkWell(
                      enableFeedback: false,
                      onTap: () {
                        setState(() {
                          radioValueId = e.id;
                        });
                      },
                      child: Center(
                        child: Container(
                          height: 44,
                          // padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    e.name,
                                    textAlign: TextAlign.center,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  if (e.subTitle != null) ...[
                                    SizedBox(height: 4),
                                    Text(e.subTitle),
                                  ],
                                ],
                              ),
                              if (radioValueId == e.id) ...[
                                Icon(
                                  Icons.check,
                                  color: Palette.Primary,
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      height: 1,
                    ),
                  ],
                ))
            .toList(),
      ),
    );
  }
}

class TelkomselUiRadioChecklistModel {
  TelkomselUiRadioChecklistModel({
    this.id,
    this.name,
    this.subTitle,
    this.leading,
  });

  int id;
  String name;
  String subTitle;
  Widget leading;

  factory TelkomselUiRadioChecklistModel.fromRawJson(String str) =>
      TelkomselUiRadioChecklistModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TelkomselUiRadioChecklistModel.fromJson(Map<String, dynamic> json) =>
      TelkomselUiRadioChecklistModel(
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

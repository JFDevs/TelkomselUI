import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'dart:convert';

class TelkomselUiSelectChips extends StatefulWidget {
  final List<TelkomselUiSelectChipsModel> radioContent;
  final Function(TelkomselUiSelectChipsModel) onTap;
  TelkomselUiSelectChips(this.radioContent, {Key key, @required this.onTap})
      : super(key: key);

  @override
  _TelkomselUiSelectChipsState createState() => _TelkomselUiSelectChipsState();
}

class _TelkomselUiSelectChipsState extends State<TelkomselUiSelectChips> {
  int radioValueId = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimens.padding),
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: widget.radioContent.map((e) {
          bool isSelected = radioValueId == e.id;
          return Row(
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(22),
                onTap: () {
                  setState(() {
                    radioValueId = e.id;
                  });

                  widget.onTap(e);
                },
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                    height: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: isSelected
                            ? Palette.Primary.withOpacity(.1)
                            : Theme.of(context).dividerColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            if (e.icon != null) ...[
                              Icon(e.icon,
                                  size: 15,
                                  color: isSelected
                                      ? Palette.Primary
                                      : Colors.black),
                              SizedBox(width: 4),
                            ],
                            Text(
                              e.text,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: isSelected
                                      ? Palette.Primary
                                      : Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5),
            ],
          );
        }).toList(),
      ),
    );
  }
}

class TelkomselUiSelectChipsModel {
  TelkomselUiSelectChipsModel({
    this.id,
    this.text,
    this.icon,
  });

  int id;
  String text;
  IconData icon;

  factory TelkomselUiSelectChipsModel.fromRawJson(String str) =>
      TelkomselUiSelectChipsModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TelkomselUiSelectChipsModel.fromJson(Map<String, dynamic> json) =>
      TelkomselUiSelectChipsModel(
        id: json["id"] == null ? null : json["id"],
        text: json["text"] == null ? null : json["text"],
        icon: json["icon"] == null ? null : json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "text": text == null ? null : text,
        "icon": icon == null ? null : icon,
      };
}

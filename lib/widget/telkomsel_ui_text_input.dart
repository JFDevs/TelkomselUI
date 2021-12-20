import 'package:flutter/material.dart';
import '../constants/constants.dart';

class TelkomselUiTextInput extends StatefulWidget {
  final String label;
  final String placeholder;
  final TextEditingController controller;

  TelkomselUiTextInput({Key key, this.label, this.placeholder, this.controller})
      : super(key: key);

  @override
  _TelkomselUiTextInputState createState() => _TelkomselUiTextInputState();
}

class _TelkomselUiTextInputState extends State<TelkomselUiTextInput> {
  bool showClear = false;
  var _controller;
  @override
  void initState() {
    _controller = widget.controller ?? TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 8),
        Container(
          height: 39,
          padding: EdgeInsets.only(left: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).dividerColor),
            borderRadius: BorderRadius.circular(4),
          ),
          child: TextField(
            controller: _controller,
            // style: TextStyle(fontSize: 16),
            textAlignVertical: TextAlignVertical.center,
            onChanged: (value) {
              print(value);
              if (value.isEmpty) {
                setState(() {
                  showClear = false;
                });
              } else {
                setState(() {
                  showClear = true;
                });
              }
            },
            decoration: InputDecoration(
              isDense: true,
              hintText: widget.placeholder ?? '',
              border: InputBorder.none,
              suffixIcon: !showClear
                  ? null
                  : IconButton(
                      onPressed: () {
                        _controller.clear();
                        setState(() {
                          showClear = false;
                        });
                      },
                      icon: Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: Theme.of(context).dividerColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.clear,
                          color: Palette.Primary,
                          size: 13,
                        ),
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}

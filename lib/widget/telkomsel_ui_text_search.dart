import 'package:flutter/material.dart';

class TelkomselUiTextSearch extends StatefulWidget {
  final String label;
  final String placeholder;
  final TextEditingController controller;

  TelkomselUiTextSearch(
      {Key key, this.label, this.placeholder, this.controller})
      : super(key: key);

  @override
  _TelkomselUiTextSearchState createState() => _TelkomselUiTextSearchState();
}

class _TelkomselUiTextSearchState extends State<TelkomselUiTextSearch> {
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
        if (widget.label != null) ...[
          Text(
            widget.label,
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 8),
        ],
        Container(
          height: 35,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(),
          // alignment: Alignment.center,
          decoration: BoxDecoration(
            border:
                Border.all(color: Theme.of(context).highlightColor, width: 0),
            borderRadius: BorderRadius.circular(5),
          ),
          child: TextField(
            controller: _controller,
            style: TextStyle(
                height: 1,
                color: Theme.of(context).textTheme.headline1.color,
                fontSize: 14),
            textAlignVertical: TextAlignVertical.center,
            onChanged: (value) {
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
              isCollapsed: true,
              fillColor: Theme.of(context).primaryColor,
              contentPadding: EdgeInsets.only(top: 3.0),
              isDense: true,
              focusedBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: Theme.of(context).primaryColor)),
              // filled: true,
              // contentPadding:
              //     EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
              hintText: widget.placeholder ?? '',

              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
              ),
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
                          color: Theme.of(context).scaffoldBackgroundColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.clear,
                          // color: Theme.of(context).primaryColor,
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

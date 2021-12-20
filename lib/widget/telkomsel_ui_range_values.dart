import 'package:flutter/material.dart';
import '../constants/constants.dart';

class TelkomselUiRangeValues extends StatefulWidget {
  final Function(RangeValues) onChanged;
  TelkomselUiRangeValues({Key key, @required this.onChanged}) : super(key: key);

  @override
  _TelkomselUiRangeValuesState createState() => _TelkomselUiRangeValuesState();
}

class _TelkomselUiRangeValuesState extends State<TelkomselUiRangeValues> {
  RangeValues _currentRangeValues = const RangeValues(0, 500);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RangeSlider(
        activeColor: Palette.Primary,
        inactiveColor: Palette.ScaffoldBg,
        values: _currentRangeValues,
        min: 0,
        max: 500,
        divisions: 50,
        labels: RangeLabels(
          _currentRangeValues.start.round().toString(),
          _currentRangeValues.end.round().toString(),
        ),
        onChanged: (RangeValues values) {
          setState(() {
            _currentRangeValues = values;
            widget.onChanged(values);
          });
        },
      ),
    );
  }
}

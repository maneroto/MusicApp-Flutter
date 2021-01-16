import 'package:flutter/material.dart';

class AppSlider extends StatefulWidget {
  final double initValue;
  final double maxValue;

/**
 * @param {double} initValue -> start second of the song (part of it)
 * @param {double} maxValue -> max seconds of the song
 */
  AppSlider({
    Key key,
    @required this.initValue,
    @required this.maxValue,
  }) : super(key: key);

  @override
  _AppSliderState createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  double _currentSliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue = widget.initValue,
      min: 0,
      max: widget.maxValue,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
  }
}

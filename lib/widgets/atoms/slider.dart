import 'package:flutter/material.dart';

class AppProgressBar extends StatefulWidget {
  final double initValue;
  final double maxValue;

/* Create a Slider for progress of the song 
 * @param {double} initValue -> start second of the song (part of it)
 * @param {double} maxValue -> max seconds of the song
 * 
 * @returns {Widget} returns a StateFul Slider 
 */
  AppProgressBar({
    Key key,
    @required this.initValue,
    @required this.maxValue,
  }) : super(key: key);

  @override
  _AppProgressBarState createState() => _AppProgressBarState();
}

class _AppProgressBarState extends State<AppProgressBar> {
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

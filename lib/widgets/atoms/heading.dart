import 'package:flutter/material.dart';
import '../../utils/textStyle.dart' as ts;

class AppHeading extends StatelessWidget {
  final String text;
  final TextAlign align;
  final String type;
  static const _styleMap = {
    "h1": ts.styleH1,
    "h2": ts.styleH2,
  };

  AppHeading({
    Key key,
    @required this.text,
    this.align = TextAlign.left,
    this.type = "h1",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => new Text(
        this.text,
        style: _styleMap[this.type],
        textAlign: this.align,
      );
}

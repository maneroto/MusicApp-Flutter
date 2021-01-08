import 'package:flutter/material.dart';
import '../../utils/textStyle.dart' as ts;

class AppParagraph extends StatelessWidget {
  final text;
  final align;
  final type;
  static const _styleMap = {
    "normal": ts.styleText,
    "small": ts.styleTextSmall,
  };

  AppParagraph({
    Key key,
    this.text,
    this.align,
    this.type = "normal",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => new Text(
        this.text,
        style: _styleMap[this.type],
        textAlign: this.align,
      );
}

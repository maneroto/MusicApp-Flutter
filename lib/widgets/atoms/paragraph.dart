import 'package:flutter/material.dart';
import '../../utils/textStyle.dart' as appTextStyle;

class AppParagraph extends StatelessWidget {
  final String text;
  final TextAlign align;
  final String type;
  static const _styleMap = {
    "normal": appTextStyle.styleText,
    "small": appTextStyle.styleTextSmall,
  };

  AppParagraph({
    Key key,
    @required this.text,
    this.align = TextAlign.left,
    this.type = "normal",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => new Text(
        this.text,
        style: _styleMap[this.type],
        textAlign: this.align,
      );
}

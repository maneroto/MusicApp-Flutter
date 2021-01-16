import 'dart:async';

import 'package:flutter/material.dart';
import '../../utils/textStyle.dart' as appTextStyle;

class AppPopUpMenuItem extends StatelessWidget {
  final String value;
  final TextStyle textStyle;
  final Text label;

  /**
 * @param {String} value -> the return value
 * @param {TextStyle} textStyle -> text style of the text
 * @param {Text} label -> the text of the item
 */
  AppPopUpMenuItem(
      {Key key,
      @required this.value,
      bool enabled: true,
      double height: kMinInteractiveDimension,
      this.textStyle = appTextStyle.styleTextSmall,
      @required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) => new PopupMenuItem(
        value: this.value,
        child: this.label,
      );
}

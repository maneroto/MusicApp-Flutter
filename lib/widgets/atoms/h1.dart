import 'package:flutter/material.dart';
import '../../utils/textStyle.dart' as appTextSytiles;

class AppH1Text extends StatelessWidget {
  final text;

  AppH1Text({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      new Text(this.text, style: appTextSytiles.styleH1);
}

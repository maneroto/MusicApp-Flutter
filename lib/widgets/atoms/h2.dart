import 'package:flutter/material.dart';
import '../../utils/textStyle.dart' as appTextSytiles;

class AppH2Text extends StatelessWidget {
  final text;

  AppH2Text({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      new Text(this.text, style: appTextSytiles.styleH1);
}

import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class AppButton extends StatelessWidget {
  final String text;
  final method;

  AppButton({
    Key key,
    @required this.text,
    @required this.method,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => new FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
            side: BorderSide(color: primary)),
        color: primary,
        textColor: Colors.white,
        child: Text(
          this.text.toUpperCase(),
        ),
        onPressed: this.method,
      );
}

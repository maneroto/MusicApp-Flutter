import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final Icon icon;
  final method;

  AppIconButton({
    Key key,
    @required this.icon,
    @required this.method,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => new IconButton(
        icon: this.icon,
        onPressed: this.method,
      );
}

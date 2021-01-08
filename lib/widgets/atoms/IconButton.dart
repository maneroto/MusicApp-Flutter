import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final icon;
  final method;

  AppIconButton({
    Key key,
    this.icon,
    this.method,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => new IconButton(
        icon: this.icon,
        onPressed: this.method,
      );
}

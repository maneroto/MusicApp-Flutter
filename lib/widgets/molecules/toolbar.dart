import 'package:flutter/material.dart';
import '../../utils/colors.dart' as appColors;
import '../../utils/icons.dart' as appIcons;
import '../atoms/IconButton.dart';

class AppToolbar extends StatelessWidget {
  final controller;
  final methodSearch;
  final menu;

  AppToolbar({
    Key key,
    this.controller,
    this.methodSearch,
    this.menu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => new AppBar(
        title: TextField(
          controller: this.controller,
          onSubmitted: this.methodSearch,
          decoration: InputDecoration(
            prefixIcon: appIcons.search,
            border: InputBorder.none,
          ),
        ),
        backgroundColor: appColors.primary,
        actions: <Widget>[
          new AppIconButton(
            icon: appIcons.menu,
            method: this.menu,
          )
        ],
      );
}

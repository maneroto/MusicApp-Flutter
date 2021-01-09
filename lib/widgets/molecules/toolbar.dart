import 'package:flutter/material.dart';
import '../../utils/colors.dart' as cl;
import '../../utils/icons.dart' as ic;
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
            prefixIcon: ic.search,
            border: InputBorder.none,
          ),
        ),
        backgroundColor: cl.primary,
        actions: <Widget>[
          new AppIconButton(
            icon: ic.menu,
            method: this.menu,
          )
        ],
      );
}

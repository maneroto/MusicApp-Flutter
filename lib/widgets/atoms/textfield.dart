import 'package:flutter/material.dart';
import '../../utils/icons.dart' as appIcons;

class AppTextField extends StatelessWidget {
  final Icon icon;
  final String hint;
  final TextEditingController controller;
  final methodSearch;

/**
 * @param {Icon} icon -> left decoration icon.
 * @param {String} hint -> text of reference (placeholder for web)
 * @param {TextEditingController} controller -> input controller of the TextField
 * @param {Void} methodSearch -> method to search the song (or similar)
 */
  AppTextField({
    Key key,
    this.icon = appIcons.search,
    this.hint = "Name",
    @required this.controller,
    @required this.methodSearch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: this.controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          prefixIcon: this.icon,
          labelText: this.hint,
        ),
        onSubmitted: (String value) async {
          this.methodSearch(value);
        });
  }
}

import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  final url;
  final align;
  final fit;
  final width;
  final height;

  AppImage({
    Key key,
    this.url,
    this.align,
    this.fit = BoxFit.contain,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => new Image(
        image: AssetImage(this.url),
        alignment: this.align,
        fit: this.fit,
        width: this.width,
        height: this.height,
      );
}

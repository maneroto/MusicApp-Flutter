import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  final String url;
  final Alignment alignment;
  final BoxFit fit;
  final double width;
  final double height;

  AppImage({
    Key key,
    @required this.url,
    this.alignment = Alignment.center,
    this.fit = BoxFit.contain,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => new Image(
        image: AssetImage(this.url),
        alignment: this.alignment,
        fit: this.fit,
        width: this.width,
        height: this.height,
      );
}

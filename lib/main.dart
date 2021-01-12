import 'package:flutter/material.dart';
import './widgets/atoms/paragraph.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    color: Colors.white,
    home: Scaffold(
      body: SafeArea(
        child: AppParagraph(
          align: TextAlign.left,
          type: "normal",
          text: "hello world",
        ),
      ),
    ),
  ));
}

// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';

class TextUtils extends StatelessWidget {
  TextUtils({
    Key? key,
    required this.size,
    required this.color,
    this.textDecoration = TextDecoration.none,
    required this.weight,
    this.textAlign = TextAlign.center,
    required this.text,
    this.textOverflow = TextOverflow.ellipsis,
    this.maxLine,
  }) : super(key: key);
  final double size;
  final Color color;
  final String text;
  final TextOverflow textOverflow;
  final FontWeight weight;
  final TextAlign textAlign;
  final int? maxLine;

  TextDecoration? textDecoration;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine ?? 3,
      style: TextStyle(
          fontSize: size,
          fontWeight: weight,
          color: color,
          decoration: textDecoration,
          fontFamily: "DMSans"),
      textAlign: textAlign,
    );
  }
}

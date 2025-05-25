import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.fontSize = 16,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.white,
    this.maxLines = 1,
    this.height = 1,
    this.letterSpacing = 1,
  });
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final int maxLines;
  final double height;
  final double letterSpacing;
  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: maxLines,
      text,
      style: TextStyle(
        letterSpacing: letterSpacing,
        height: height,
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        fontFamily: 'TenorSans',
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

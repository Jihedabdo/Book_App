import 'package:book_st/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.textString,
    required this.backgroundColor,
    this.borderRadius,
    required this.textColor,
    this.fontSize,
  });
  final String textString;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(12))),
        child: Text(
          textString,
          style: Styles.textStyle16.copyWith(
            color: textColor,
            fontSize: fontSize,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}

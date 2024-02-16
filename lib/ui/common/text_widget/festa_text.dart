import 'package:festa/infrastructure/commons/constants/color_constant.dart';
import 'package:flutter/material.dart';

class FestaText extends StatelessWidget {
  const FestaText(
      {Key? key,
      required this.title,
      this.titleColor,
      this.titleTextAlign = TextAlign.left,
      this.maxLine,
      this.fontWeight,
      this.softWrap,
      this.fontStyle,
      this.textDecoration,
      this.textScaleFactor,
      required this.fontSize,
      this.lineHeight,
      this.isUnderline = false,
      this.fontFamily,
      this.overflow,
      this.letterSpacing})
      : super(key: key);

  final String title;
  final double? fontSize;
  final Color? titleColor;
  final TextAlign titleTextAlign;
  final int? maxLine;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final String? fontFamily;
  final bool? softWrap;
  final TextDecoration? textDecoration;
  final double? textScaleFactor;
  final bool? isUnderline;
  final double? lineHeight;
  final double? letterSpacing;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: titleColor ?? ColorConstants.primary,
          fontWeight: fontWeight ?? FontWeight.w600,
          decoration:
              isUnderline == true ? TextDecoration.underline : textDecoration,
          fontFamily: fontFamily ?? 'Inter',
          letterSpacing: letterSpacing ?? 0,
          overflow: TextOverflow.ellipsis,
          height: lineHeight ?? 1.5,
          decorationColor: titleColor ?? ColorConstants.primary,
          fontSize: fontSize ?? 16),
      textAlign: titleTextAlign,
      maxLines: maxLine,
      overflow: overflow ?? TextOverflow.ellipsis,
    );
  }
}

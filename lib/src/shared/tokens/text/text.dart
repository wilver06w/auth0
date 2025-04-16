import 'package:auth0/src/shared/tokens/colors.dart';
import 'package:auth0/src/shared/tokens/spacing.dart';
import 'package:auth0/src/shared/tokens/text/typography.dart';
import 'package:flutter/material.dart';

part 'xigo_text.dart';

enum Auth0TextType { h1, h2, h3, h4, h5, h6, body, title, label, small, xSmall }

class Auth0Text {
  Auth0Text._();

  ///h1 Text widget - fontSize 96
  static Widget h1({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    double? letterSpacing,
    int? maxLines,
    TextStyle? textStyle,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: Auth0Typography.h1,
        color: color ?? Auth0Colors.raisinBlack,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        textOverflow: textOverflow,
        letterSpacing: letterSpacing,
        maxLines: maxLines,
        textStyle: textStyle,
        decoration: decoration,
      );

  ///h2 Text widget - fontSize 58
  static Widget h2({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    double? letterSpacing,
    int? maxLines,
    TextStyle? textStyle,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: Auth0Typography.h2,
        color: color ?? Auth0Colors.raisinBlack,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        textOverflow: textOverflow,
        letterSpacing: letterSpacing,
        maxLines: maxLines,
        textStyle: textStyle,
        decoration: decoration,
      );

  ///h3 Text widget - fontSize 47
  static Widget h3({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    double? letterSpacing,
    int? maxLines,
    TextStyle? textStyle,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: Auth0Typography.h3,
        color: color ?? Auth0Colors.raisinBlack,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        textOverflow: textOverflow,
        letterSpacing: letterSpacing,
        maxLines: maxLines,
        textStyle: textStyle,
        decoration: decoration,
      );

  ///h4 Text widget - fontSize 33
  static Widget h4({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    double? letterSpacing,
    int? maxLines,
    TextStyle? textStyle,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: Auth0Typography.h4,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        textOverflow: textOverflow,
        letterSpacing: letterSpacing,
        maxLines: maxLines,
        textStyle: textStyle,
        decoration: decoration,
      );

  ///h5 Text widget - fontSize 23
  static Widget h5({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    double? letterSpacing,
    int? maxLines,
    TextStyle? textStyle,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: Auth0Typography.h5,
        color: color ?? Auth0Colors.raisinBlack,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        textOverflow: textOverflow,
        letterSpacing: letterSpacing,
        maxLines: maxLines,
        textStyle: textStyle,
        decoration: decoration,
      );

  ///h6 Text widget - fontSize 19
  static Widget h6({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    double? letterSpacing,
    int? maxLines,
    TextStyle? textStyle,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: Auth0Typography.h6,
        color: color ?? Auth0Colors.raisinBlack,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.bold,
        textAlign: textAlign,
        textOverflow: textOverflow,
        letterSpacing: letterSpacing,
        maxLines: maxLines,
        textStyle: textStyle,
        decoration: decoration,
      );

  ///body Text widget - fontSize 16
  static Widget body({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    int? maxLines,
    double? letterSpacing,
    TextStyle? textStyle,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: Auth0Typography.body,
        color: color ?? Auth0Colors.raisinBlack,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        letterSpacing: letterSpacing,
        textStyle: textStyle,
        decoration: decoration,
      );

  ///title Text widget - fontSize 18
  static Widget title({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    int? maxLines,
    double? letterSpacing,
    TextStyle? textStyle,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: Auth0Typography.title,
        color: color ?? Auth0Colors.raisinBlack,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        letterSpacing: letterSpacing,
        textStyle: textStyle,
      );

  ///labelText Text widget - fontSize 14
  static Widget labelText({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    int? maxLines,
    double? letterSpacing,
    TextStyle? textStyle,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: Auth0Typography.label,
        color: color ?? Auth0Colors.raisinBlack,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        letterSpacing: letterSpacing,
        textStyle: textStyle,
        decoration: decoration,
      );

  ///backofficeLabel Text widget - fontSize 14
  static Widget backofficeLabel({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    double? letterSpacing,
    int? maxLines,
    TextStyle? textStyle,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: Auth0Typography.label,
        color: color ?? Auth0Colors.tertiaryColor,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.bold,
        textAlign: textAlign,
        letterSpacing: Auth0SpacingFoundation.xs,
        textOverflow: textOverflow,
        maxLines: maxLines,
        textStyle: textStyle,
        decoration: decoration,
      );

  ///xSmall Text widget - fontSize 8
  static Widget xSmall({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    int? maxLines,
    double? letterSpacing,
    TextStyle? textStyle,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: Auth0Typography.xSmall,
        color: color ?? Auth0Colors.raisinBlack,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        textOverflow: textOverflow,
        letterSpacing: letterSpacing,
        maxLines: maxLines,
        textStyle: textStyle,
        decoration: decoration,
      );

  ///small Text widget - fontSize 12
  static Widget small({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    int? maxLines,
    double? letterSpacing,
    TextStyle? textStyle,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: Auth0Typography.small,
        color: color ?? Auth0Colors.raisinBlack,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        letterSpacing: letterSpacing,
        textStyle: textStyle,
        decoration: decoration,
      );

  ///small Text widget - fontSize 12
  static Widget fontBold({
    required String label,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? textOverflow,
    int? maxLines,
    double? letterSpacing,
    TextStyle? textStyle,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: Auth0Typography.body,
        color: color ?? Auth0Colors.raisinBlack,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.w600,
        textAlign: textAlign,
        textOverflow: textOverflow,
        maxLines: maxLines,
        letterSpacing: letterSpacing,
        textStyle: textStyle,
        decoration: decoration,
      );

  ///full custom Text widget - fontSize custom
  static Widget fontSizeCustom({
    required String label,
    required double fontSize,
    Key? key,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    Color? color,
    TextOverflow? textOverflow,
    int? maxLines,
    TextStyle? textStyle,
    TextDecoration? decoration,
  }) =>
      _TextGeneric(
        key: key,
        label: label,
        fontSize: fontSize,
        color: color ?? Auth0Colors.raisinBlack,
        fontStyle: fontStyle,
        fontWeight: fontWeight ?? FontWeight.normal,
        textAlign: textAlign,
        textOverflow: textOverflow,
        letterSpacing: letterSpacing,
        maxLines: maxLines,
        textStyle: textStyle,
        decoration: decoration,
      );

  static TextStyle style({
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    TextStyle? textStyle,
    TextDecoration? decoration,
    double? lineHeight,
    List<Shadow>? shadows,
  }) =>
      TextStyle(
        height: lineHeight,
        fontFamily: Auth0Typography.inter,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle ?? FontStyle.normal,
        letterSpacing: letterSpacing,
        decoration: decoration ?? TextDecoration.none,
        shadows: shadows,
      ).merge(textStyle);
}

class _TextGeneric extends StatelessWidget {
  const _TextGeneric({
    required this.label,
    required this.fontSize,
    super.key,
    this.color,
    this.fontStyle,
    this.fontWeight,
    this.textOverflow,
    this.textAlign,
    this.letterSpacing,
    this.maxLines,
    this.textStyle,
    this.decoration,
    this.fontFamily,
    this.shadows,
  });

  final String label;
  final double fontSize;
  final TextOverflow? textOverflow;
  final Color? color;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final int? maxLines;
  final TextStyle? textStyle;
  final TextDecoration? decoration;
  final String? fontFamily;
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        fontFamily: fontFamily ?? Auth0Typography.inter,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle ?? FontStyle.normal,
        letterSpacing: letterSpacing,
        decoration: decoration ?? TextDecoration.none,
        overflow: textOverflow,
        shadows: shadows,
      ).merge(textStyle),
    );
  }
}

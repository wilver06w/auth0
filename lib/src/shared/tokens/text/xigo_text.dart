// ████████╗██╗░░░██╗██╗░░░░░  ████████╗███████╗██╗░░██╗████████╗
// ╚══██╔══╝██║░░░██║██║░░░░░  ╚══██╔══╝██╔════╝╚██╗██╔╝╚══██╔══╝
// ░░░██║░░░██║░░░██║██║░░░░░  ░░░██║░░░█████╗░░░╚███╔╝░░░░██║░░░
// ░░░██║░░░██║░░░██║██║░░░░░  ░░░██║░░░██╔══╝░░░██╔██╗░░░░██║░░░
// ░░░██║░░░╚██████╔╝███████╗  ░░░██║░░░███████╗██╔╝╚██╗░░░██║░░░
// ░░░╚═╝░░░░╚═════╝░╚══════╝  ░░░╚═╝░░░╚══════╝╚═╝░░╚═╝░░░╚═╝░░░

part of 'text.dart';

class Auth0TextHeading1 extends StatelessWidget {
  /// Creates a Xigoio heading text widget.
  ///
  /// the default size of this widget is 32

  const Auth0TextHeading1(
    this.label, {
    super.key,
    this.textAlign,
    this.weight,
    this.color,
    this.textOverflow,
    this.letterSpacing,
    this.maxLines,
    this.decoration,
  });

  final String label;
  final TextAlign? textAlign;
  final FontWeight? weight;
  final Color? color;
  final TextOverflow? textOverflow;
  final double? letterSpacing;
  final int? maxLines;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return _TextGeneric(
      key: key,
      label: label,
      fontSize: Auth0Typography.heading1,
      color: color ?? Auth0Colors.primaryColor,
      fontStyle: FontStyle.normal,
      fontWeight: weight ?? FontWeight.w700,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
    );
  }
}

class Auth0TextHeading2 extends StatelessWidget {
  /// Creates a Xigoio heading text widget.
  ///
  /// the default size of this widget is 28

  const Auth0TextHeading2(
    this.label, {
    super.key,
    this.textAlign,
    this.weight,
    this.color,
    this.textOverflow,
    this.letterSpacing,
    this.maxLines,
    this.decoration,
    this.shadows,
  });

  final String label;
  final TextAlign? textAlign;
  final FontWeight? weight;
  final Color? color;
  final TextOverflow? textOverflow;
  final double? letterSpacing;
  final int? maxLines;
  final TextDecoration? decoration;
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return _TextGeneric(
      key: key,
      label: label,
      fontSize: Auth0Typography.heading2,
      color: color ?? Auth0Colors.primaryColor,
      fontStyle: FontStyle.normal,
      fontWeight: weight ?? FontWeight.w700,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
      shadows: shadows,
    );
  }
}

class Auth0TextHeading3 extends StatelessWidget {
  /// Creates a Xigoio heading text widget.
  ///
  /// the default size of this widget is 24

  const Auth0TextHeading3(
    this.label, {
    super.key,
    this.textAlign,
    this.weight,
    this.color,
    this.textOverflow,
    this.letterSpacing,
    this.maxLines,
    this.decoration,
    this.shadows,
  });

  final String label;
  final TextAlign? textAlign;
  final FontWeight? weight;
  final Color? color;
  final TextOverflow? textOverflow;
  final double? letterSpacing;
  final int? maxLines;
  final TextDecoration? decoration;
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return _TextGeneric(
      key: key,
      label: label,
      fontSize: Auth0Typography.heading3,
      color: color ?? Auth0Colors.primaryColor,
      fontStyle: FontStyle.normal,
      fontWeight: weight ?? FontWeight.w700,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
      shadows: shadows,
    );
  }
}

class Auth0TextHeading4 extends StatelessWidget {
  /// Creates a Xigoio heading text widget.
  ///
  /// the default size of this widget is 20

  const Auth0TextHeading4(
    this.label, {
    super.key,
    this.textAlign,
    this.weight,
    this.color,
    this.textOverflow,
    this.letterSpacing,
    this.maxLines,
    this.decoration,
    this.shadows,
  });

  final String label;
  final TextAlign? textAlign;
  final FontWeight? weight;
  final Color? color;
  final TextOverflow? textOverflow;
  final double? letterSpacing;
  final int? maxLines;
  final TextDecoration? decoration;
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return _TextGeneric(
      key: key,
      label: label,
      fontSize: Auth0Typography.heading4,
      color: color ?? Auth0Colors.primaryColor,
      fontStyle: FontStyle.normal,
      fontWeight: weight ?? FontWeight.w700,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
      shadows: shadows,
    );
  }
}

class Auth0TextHeading5 extends StatelessWidget {
  /// Creates a Xigoio heading text widget.
  ///
  /// the default size of this widget is 18

  const Auth0TextHeading5(
    this.label, {
    super.key,
    this.textAlign,
    this.weight,
    this.color,
    this.textOverflow,
    this.letterSpacing,
    this.maxLines,
    this.decoration,
    this.shadows,
  });

  final String label;
  final TextAlign? textAlign;
  final FontWeight? weight;
  final Color? color;
  final TextOverflow? textOverflow;
  final double? letterSpacing;
  final int? maxLines;
  final TextDecoration? decoration;
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return _TextGeneric(
      key: key,
      label: label,
      fontSize: Auth0Typography.heading5,
      color: color ?? Auth0Colors.primaryColor,
      fontStyle: FontStyle.normal,
      fontWeight: weight ?? FontWeight.w700,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
      shadows: shadows,
    );
  }
}

class Auth0TextHeading6 extends StatelessWidget {
  /// Creates a Xigoio heading text widget.
  ///
  /// the default size of this widget is 16

  const Auth0TextHeading6(
    this.label, {
    super.key,
    this.textAlign,
    this.weight,
    this.color,
    this.textOverflow,
    this.letterSpacing,
    this.maxLines,
    this.decoration,
    this.shadows,
  });

  final String label;
  final TextAlign? textAlign;
  final FontWeight? weight;
  final Color? color;
  final TextOverflow? textOverflow;
  final double? letterSpacing;
  final int? maxLines;
  final TextDecoration? decoration;
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return _TextGeneric(
      key: key,
      label: label,
      fontSize: Auth0Typography.heading6,
      color: color ?? Auth0Colors.primaryColor,
      fontStyle: FontStyle.normal,
      fontWeight: weight ?? FontWeight.w600,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
      shadows: shadows,
    );
  }
}

class Auth0TextXl extends StatelessWidget {
  /// Creates a Xigoio heading text widget.
  ///
  /// the default size of this widget is 16

  const Auth0TextXl(
    this.label, {
    super.key,
    this.textAlign,
    this.weight,
    this.color,
    this.textOverflow,
    this.letterSpacing,
    this.maxLines,
    this.decoration,
    this.shadows,
  });
  final String label;
  final TextAlign? textAlign;
  final FontWeight? weight;
  final Color? color;
  final TextOverflow? textOverflow;
  final double? letterSpacing;
  final int? maxLines;
  final TextDecoration? decoration;
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return _TextGeneric(
      key: key,
      label: label,
      fontSize: Auth0Typography.xl,
      color: color ?? Auth0Colors.primaryColor,
      fontStyle: FontStyle.normal,
      fontWeight: weight ?? FontWeight.w600,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
      shadows: shadows,
    );
  }
}

class Auth0TextLarge extends StatelessWidget {
  /// Creates a Xigoio heading text widget.
  ///
  /// the default size of this widget is 14

  const Auth0TextLarge(
    this.label, {
    super.key,
    this.textAlign,
    this.weight,
    this.color,
    this.textOverflow,
    this.letterSpacing,
    this.maxLines,
    this.decoration,
    this.shadows,
  });

  final String label;
  final TextAlign? textAlign;
  final FontWeight? weight;
  final Color? color;
  final TextOverflow? textOverflow;
  final double? letterSpacing;
  final int? maxLines;
  final TextDecoration? decoration;
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return _TextGeneric(
      key: key,
      label: label,
      fontSize: Auth0Typography.large,
      color: color ?? Auth0Colors.primaryColor,
      fontStyle: FontStyle.normal,
      fontWeight: weight ?? FontWeight.w400,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
      shadows: shadows,
    );
  }
}

class Auth0TextMedium extends StatelessWidget {
  /// Creates a Xigo Text Widget based on Xigoio Design system
  ///
  ///  - The default `FontSize` for this widget is `12` and uses
  /// `NunitoSans` as a `fontFamily`
  ///
  /// - The default weight is `w400`
  /// ```dart
  /// Auth0TextMedium('Xigo text here');
  /// ```
  const Auth0TextMedium(
    this.label, {
    super.key,
    this.textAlign,
    this.weight,
    this.color,
    this.textOverflow,
    this.letterSpacing,
    this.maxLines,
    this.decoration,
    this.shadows,
  });

  final String label;
  final TextAlign? textAlign;
  final FontWeight? weight;
  final Color? color;
  final TextOverflow? textOverflow;
  final double? letterSpacing;
  final int? maxLines;
  final TextDecoration? decoration;
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return _TextGeneric(
      key: key,
      label: label,
      fontSize: Auth0Typography.medium,
      color: color ?? Auth0Colors.primaryColor,
      fontStyle: FontStyle.normal,
      fontWeight: weight ?? FontWeight.w400,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
      shadows: shadows,
    );
  }
}

class Auth0TextSmall extends StatelessWidget {
  /// Creates a Xigo Text Widget based on Xigoio Design system
  ///
  ///  - The default `FontSize` for this widget is `10` and uses
  /// `NunitoSans` as a `fontFamily`
  ///
  /// - The default weight is `w400`
  /// ```dart
  /// Auth0TextSmall('Xigo text here');
  /// ```
  const Auth0TextSmall(
    this.label, {
    super.key,
    this.textAlign,
    this.weight,
    this.color,
    this.textOverflow,
    this.letterSpacing,
    this.maxLines,
    this.decoration,
    this.shadows,
  });

  final String label;
  final TextAlign? textAlign;
  final FontWeight? weight;
  final Color? color;
  final TextOverflow? textOverflow;
  final double? letterSpacing;
  final int? maxLines;
  final TextDecoration? decoration;
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return _TextGeneric(
      key: key,
      label: label,
      fontSize: Auth0Typography.xigoSmall,
      color: color ?? Auth0Colors.primaryColor,
      fontStyle: FontStyle.normal,
      fontWeight: weight ?? FontWeight.w400,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
      shadows: shadows,
    );
  }
}

class Auth0TextCaptionS extends StatelessWidget {
  /// Creates a Xigo Text Widget based on Xigoio Design system
  ///
  ///  - The default `FontSize` for this widget is `12` and uses
  /// `NunitoSans` as a `fontFamily`
  ///
  /// - The default weight is `w400`
  /// ```dart
  /// Auth0TextCaptionS('Xigo text here');
  /// ```
  const Auth0TextCaptionS(
    this.label, {
    super.key,
    this.textAlign,
    this.weight,
    this.color,
    this.textOverflow,
    this.letterSpacing,
    this.maxLines,
    this.decoration,
    this.shadows,
  });

  final String label;
  final TextAlign? textAlign;
  final FontWeight? weight;
  final Color? color;
  final TextOverflow? textOverflow;
  final double? letterSpacing;
  final int? maxLines;
  final TextDecoration? decoration;
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return _TextGeneric(
      key: key,
      label: label,
      fontSize: Auth0Typography.captionSmall,
      color: color ?? Auth0Colors.primaryColor,
      fontStyle: FontStyle.normal,
      fontWeight: weight ?? FontWeight.w400,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
      shadows: shadows,
    );
  }
}

class Auth0TextCaptionXs extends StatelessWidget {
  /// Creates a Xigo Text Widget based on Xigoio Design system
  ///
  ///  - The default `FontSize` for this widget is `10` and uses
  /// `NunitoSans` as a `fontFamily`
  ///
  /// - The default weight is `w400`
  /// ```dart
  /// Auth0TextCaptionXs('Xigo text here');
  /// ```
  const Auth0TextCaptionXs(
    this.label, {
    super.key,
    this.textAlign,
    this.weight,
    this.color,
    this.textOverflow,
    this.letterSpacing,
    this.maxLines,
    this.decoration,
    this.shadows,
  });

  final String label;
  final TextAlign? textAlign;
  final FontWeight? weight;
  final Color? color;
  final TextOverflow? textOverflow;
  final double? letterSpacing;
  final int? maxLines;
  final TextDecoration? decoration;
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return _TextGeneric(
      key: key,
      label: label,
      fontSize: Auth0Typography.captionExtraSmall,
      color: color ?? Auth0Colors.primaryColor,
      fontStyle: FontStyle.normal,
      fontWeight: weight ?? FontWeight.w400,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
    );
  }
}

class Auth0TextNumberL extends StatelessWidget {
  /// Creates a Xigo Text Widget based on Xigoio Design system
  ///
  ///  - The default `FontSize` for this widget is `18` and uses
  /// `RobotoMono` as a `fontFamily`
  ///
  /// - The default weight is `Bold` or `w400`
  /// ```dart
  /// Auth0TextNumberL('$ 5.600.00');
  /// ```
  const Auth0TextNumberL(
    this.label, {
    super.key,
    this.textAlign,
    this.weight,
    this.color,
    this.textOverflow,
    this.letterSpacing,
    this.maxLines,
    this.decoration,
  });

  final String label;
  final TextAlign? textAlign;
  final FontWeight? weight;
  final Color? color;
  final TextOverflow? textOverflow;
  final double? letterSpacing;
  final int? maxLines;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return _TextGeneric(
      key: key,
      label: label,
      fontSize: Auth0Typography.heading5,
      color: color ?? Auth0Colors.primaryColor,
      fontStyle: FontStyle.normal,
      fontWeight: weight ?? FontWeight.w400,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
      fontFamily: Auth0Typography.robotoMono,
    );
  }
}

class Auth0TextNumberM extends StatelessWidget {
  /// Creates a Xigo Text Widget based on Xigoio Design system
  ///
  ///  - The default `FontSize` for this widget is `14` and uses
  /// `RobotoMono` as a `fontFamily`
  ///
  /// - The default weight is `Bold` or `w400`
  /// ```dart
  /// Auth0TextNumberM('$ 5.600.00');
  /// ```
  const Auth0TextNumberM(
    this.label, {
    super.key,
    this.textAlign,
    this.weight,
    this.color,
    this.textOverflow,
    this.letterSpacing,
    this.maxLines,
    this.decoration,
  });

  final String label;
  final TextAlign? textAlign;
  final FontWeight? weight;
  final Color? color;
  final TextOverflow? textOverflow;
  final double? letterSpacing;
  final int? maxLines;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return _TextGeneric(
      key: key,
      label: label,
      fontSize: Auth0Typography.large,
      color: color ?? Auth0Colors.primaryColor,
      fontStyle: FontStyle.normal,
      fontWeight: weight ?? FontWeight.w400,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
      fontFamily: Auth0Typography.robotoMono,
    );
  }
}

class Auth0TextNumberS extends StatelessWidget {
  /// Creates a Xigo Text Widget based on Xigoio Design system
  ///
  ///  - The default `FontSize` for this widget is `12` and uses
  /// `RobotoMono` as a `fontFamily`
  ///
  /// - The default weight is `Bold` or `w400`
  /// ```dart
  /// Auth0TextNumberS('$ 5.600.00')
  /// ```
  const Auth0TextNumberS(
    this.label, {
    super.key,
    this.textAlign,
    this.weight,
    this.color,
    this.textOverflow,
    this.letterSpacing,
    this.maxLines,
    this.decoration,
  });

  final String label;
  final TextAlign? textAlign;
  final FontWeight? weight;
  final Color? color;
  final TextOverflow? textOverflow;
  final double? letterSpacing;
  final int? maxLines;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return _TextGeneric(
      key: key,
      label: label,
      fontSize: Auth0Typography.captionSmall,
      color: color ?? Auth0Colors.primaryColor,
      fontStyle: FontStyle.normal,
      fontWeight: weight ?? FontWeight.w400,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      decoration: decoration,
      fontFamily: Auth0Typography.robotoMono,
    );
  }
}

class Auth0TextCustom extends StatelessWidget {
  /// Creates a Xigoio custom text widget.
  ///
  /// the custom size

  const Auth0TextCustom(
    this.label, {
    super.key,
    required this.fontSize,
    this.textAlign,
    this.weight,
    this.color,
    this.textOverflow,
    this.letterSpacing,
    this.maxLines,
    this.decoration,
    this.fontStyle,
    this.shadows,
    this.fontFamily,
  });

  final String label;
  final TextAlign? textAlign;
  final FontWeight? weight;
  final Color? color;
  final TextOverflow? textOverflow;
  final double? letterSpacing;
  final int? maxLines;
  final TextDecoration? decoration;
  final double fontSize;
  final FontStyle? fontStyle;
  final List<Shadow>? shadows;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return _TextGeneric(
      key: key,
      label: label,
      fontSize: fontSize,
      color: color ?? Auth0Colors.primaryColor,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: weight ?? FontWeight.w600,
      textAlign: textAlign,
      textOverflow: textOverflow,
      letterSpacing: letterSpacing,
      maxLines: maxLines,
      fontFamily: fontFamily,
      decoration: decoration,
      shadows: shadows,
    );
  }
}

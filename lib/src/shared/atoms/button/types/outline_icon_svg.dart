part of '../btn.dart';

class _Auth0BtnOutlineIconSvg extends Auth0BtnInterface {
  _Auth0BtnOutlineIconSvg({
    required super.labelColor,
    required super.labelFontWeight,
    required super.borderColor,
    required super.buttonColor,
    required String super.svgUrl,
    required super.iconMargin,
    required super.showIconAtRight,
    required super.assetPackage,
    required super.svgColor,
    required super.svgSize,
  }) : super(
          hasBorder: true,
          iconIsSvg: true,
          showIcon: true,
        );
}

class Auth0BtnOutlineIconSvg extends StatelessWidget {
  const Auth0BtnOutlineIconSvg({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = Auth0BtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.borderColor,
    required this.svgUrl,
    this.iconMargin = 3.0,
    this.showIconAtRight = true,
    this.assetPackage,
    this.svgColor,
    this.svgSize = 16,
    this.borderRadius,
    this.buttonColor = Colors.transparent,
  });

  final String label;
  final VoidCallback? onTap;
  final BtnSize btnSize;
  final Color? labelColor;
  final FontWeight? labelFontWeight;
  final Color? borderColor;
  final String svgUrl;
  final double iconMargin;
  final bool showIconAtRight;
  final String? assetPackage;
  final Color? svgColor;
  final double svgSize;
  final BorderRadiusGeometry? borderRadius;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return _Auth0BtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _Auth0BtnOutlineIconSvg(
        labelColor: labelColor ?? Auth0Colors.primaryColor,
        labelFontWeight: labelFontWeight,
        borderColor: borderColor ?? Auth0Colors.primaryColor,
        svgUrl: svgUrl,
        iconMargin: iconMargin,
        showIconAtRight: showIconAtRight,
        assetPackage: assetPackage,
        svgColor: svgColor,
        svgSize: svgSize,
        buttonColor: buttonColor,
      ),
    );
  }
}

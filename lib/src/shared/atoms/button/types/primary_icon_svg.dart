part of '../btn.dart';

class _Auth0BtnPrimaryIconSvg extends Auth0BtnInterface {
  _Auth0BtnPrimaryIconSvg({
    required super.labelColor,
    required super.svgColor,
    required super.labelFontWeight,
    required String super.svgUrl,
    required super.assetPackage,
    required super.showIconAtRight,
    required super.iconMargin,
    super.svgUrlDisabled,
    required super.svgSize,
  }) : super(
          buttonColor: Auth0Colors.primaryColor,
          iconIsSvg: true,
          showIcon: true,
        );
}

class Auth0BtnPrimaryIconSvg extends StatelessWidget {
  const Auth0BtnPrimaryIconSvg({
    super.key,
    required this.label,
    required this.onTap,
    required this.svgUrl,
    this.assetPackage,
    this.borderRadius,
    this.btnSize = Auth0BtnSize.md,
    this.iconMargin = 3.0,
    this.labelColor,
    this.labelFontWeight,
    this.showIconAtRight = true,
    this.svgColor,
    this.svgSize = 16,
    this.svgUrlDisabled,
    this.whiteLetters = false,
  });

  final BorderRadiusGeometry? borderRadius;
  final BtnSize btnSize;
  final Color? labelColor;
  final Color? svgColor;
  final FontWeight? labelFontWeight;
  final String? svgUrlDisabled;
  final String label;
  final String svgUrl;
  final String? assetPackage;
  final VoidCallback? onTap;
  final bool showIconAtRight;
  final bool whiteLetters;
  final double iconMargin;
  final double svgSize;

  @override
  Widget build(BuildContext context) {
    return _Auth0BtnGeneric(
      borderRadius: borderRadius,
      btnSize: btnSize,
      label: label,
      onTap: onTap,
      whiteLetters: whiteLetters,
      btnType: _Auth0BtnPrimaryIconSvg(
        assetPackage: assetPackage,
        iconMargin: iconMargin,
        labelColor: labelColor ?? Auth0Colors.primaryColor,
        labelFontWeight: labelFontWeight,
        svgUrlDisabled: svgUrlDisabled,
        showIconAtRight: showIconAtRight,
        svgColor: svgColor,
        svgSize: svgSize,
        svgUrl: svgUrl,
      ),
    );
  }
}

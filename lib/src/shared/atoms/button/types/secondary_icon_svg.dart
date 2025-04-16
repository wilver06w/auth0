part of '../btn.dart';

class _Auth0BtnSecondaryIconSvg extends Auth0BtnInterface {
  _Auth0BtnSecondaryIconSvg({
    required super.labelColor,
    required super.svgColor,
    required super.labelFontWeight,
    required String super.svgUrl,
    required super.assetPackage,
    required super.showIconAtRight,
    required super.iconMargin,
    required super.svgSize,
    super.svgUrlDisabled,
  }) : super(
          buttonColor: Colors.transparent,
          iconIsSvg: true,
          showIcon: true,
        );
}

class Auth0BtnSecondaryIconSvg extends StatelessWidget {
  const Auth0BtnSecondaryIconSvg({
    super.key,
    required this.label,
    required this.onTap,
    required this.svgUrl,
    this.assetPackage,
    this.borderRadius,
    this.btnSize = Auth0BtnSize.md,
    this.grayLetters = false,
    this.iconMargin = 3.0,
    this.labelColor,
    this.labelFontWeight,
    this.svgUrlDisabled,
    this.showIconAtRight = true,
    this.svgColor,
    this.svgSize = 16,
    this.transparentColorDisabledButton = false,
  });

  final BorderRadiusGeometry? borderRadius;
  final BtnSize btnSize;
  final Color? labelColor;
  final Color? svgColor;
  final FontWeight? labelFontWeight;
  final String label;
  final String svgUrl;
  final String? assetPackage;
  final VoidCallback? onTap;
  final String? svgUrlDisabled;
  final bool showIconAtRight;
  final bool transparentColorDisabledButton;
  final bool grayLetters;
  final double iconMargin;
  final double svgSize;

  @override
  Widget build(BuildContext context) {
    return _Auth0BtnGeneric(
      borderRadius: borderRadius,
      btnSize: btnSize,
      grayLetters: grayLetters,
      label: label,
      onTap: onTap,
      transparentColorDisabledButton: transparentColorDisabledButton,
      btnType: _Auth0BtnSecondaryIconSvg(
        assetPackage: assetPackage,
        iconMargin: iconMargin,
        labelColor: labelColor ?? Auth0Colors.primaryColor,
        labelFontWeight: labelFontWeight,
        showIconAtRight: showIconAtRight,
        svgColor: svgColor,
        svgUrlDisabled: svgUrlDisabled,
        svgSize: svgSize,
        svgUrl: svgUrl,
      ),
    );
  }
}

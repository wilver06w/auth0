part of '../btn.dart';

class _Auth0BtnTertiaryIconSvg extends Auth0BtnInterface {
  _Auth0BtnTertiaryIconSvg({
    required super.labelColor,
    required super.labelFontWeight,
    required String super.svgUrl,
    required super.iconMargin,
    required super.showIconAtRight,
    required super.assetPackage,
    required super.svgColor,
    required super.svgSize,
  }) : super(
          buttonColor: Auth0Colors.tertiaryColor,
          iconIsSvg: true,
          showIcon: true,
        );
}

class Auth0BtnTertiaryIconSvg extends StatelessWidget {
  const Auth0BtnTertiaryIconSvg({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = Auth0BtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    required this.svgUrl,
    this.iconMargin = 3.0,
    this.showIconAtRight = true,
    this.assetPackage,
    this.svgColor,
    this.svgSize = 16,
    this.borderRadius,
  });

  final String label;
  final VoidCallback? onTap;
  final BtnSize btnSize;
  final Color? labelColor;
  final FontWeight? labelFontWeight;
  final String svgUrl;
  final double iconMargin;
  final bool showIconAtRight;
  final String? assetPackage;
  final Color? svgColor;
  final double svgSize;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _Auth0BtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _Auth0BtnTertiaryIconSvg(
        labelColor: labelColor ?? Auth0Colors.primaryColor,
        labelFontWeight: labelFontWeight,
        svgUrl: svgUrl,
        iconMargin: iconMargin,
        showIconAtRight: showIconAtRight,
        assetPackage: assetPackage,
        svgColor: svgColor,
        svgSize: svgSize,
      ),
    );
  }
}

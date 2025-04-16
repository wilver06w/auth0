part of '../btn.dart';

class _Auth0BtnDangerIconSvg extends Auth0BtnInterface {
  _Auth0BtnDangerIconSvg({
    required super.labelColor,
    required super.labelFontWeight,
    required String super.svgUrl,
    required super.iconMargin,
    required super.showIconAtRight,
    required super.assetPackage,
    required super.svgColor,
    required super.svgSize,
  }) : super(
          buttonColor: Auth0Colors.dangerColor,
          iconIsSvg: true,
          showIcon: true,
        );
}

class Auth0BtnDangerIconSvg extends StatelessWidget {
  const Auth0BtnDangerIconSvg({
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
      btnType: _Auth0BtnDangerIconSvg(
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

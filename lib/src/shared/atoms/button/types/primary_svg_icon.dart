part of '../btn.dart';

class _Auth0BtnPrimarySvgIcon extends Auth0BtnInterface {
  _Auth0BtnPrimarySvgIcon({
    required super.labelColor,
    required super.labelFontWeight,
    required Auth0IconData icon,
    required double iconSize,
    required super.showIconAtRight,
    required super.showShadow,
    Color? iconColor,
  }) : super(
          buttonColor: Auth0Colors.primaryColor,
          showIcon: true,
          svgColor: iconColor,
          iconSvg: icon,
          svgSize: iconSize,
          iconIsSvg: true,
        );
}

class Auth0BtnPrimarySvgIcon extends StatelessWidget {
  const Auth0BtnPrimarySvgIcon({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = Auth0BtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.icon = Auth0SvgIcons.alert,
    this.iconColor,
    this.iconMargin = 3.0,
    this.iconSize = 16,
    this.showIconAtRight = true,
    this.showShadow = true,
    this.borderRadius,
    this.iconIsSvg = true,
  });

  final String label;
  final VoidCallback? onTap;
  final BtnSize btnSize;
  final Color? labelColor;
  final Color? iconColor;
  final FontWeight? labelFontWeight;
  final Auth0IconData icon;
  final double iconMargin;
  final double iconSize;
  final bool showIconAtRight;
  final bool showShadow;
  final bool iconIsSvg;

  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _Auth0BtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _Auth0BtnPrimarySvgIcon(
        labelColor: labelColor ?? Auth0Colors.white,
        labelFontWeight: labelFontWeight,
        icon: icon,
        iconColor: iconColor,
        showIconAtRight: showIconAtRight,
        showShadow: showShadow,
        iconSize: iconSize,
      ),
    );
  }
}

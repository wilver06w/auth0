part of '../btn.dart';

class _Auth0BtnOutlineIcon extends Auth0BtnInterface {
  _Auth0BtnOutlineIcon({
    required super.labelColor,
    required super.labelFontWeight,
    required super.borderColor,
    required super.icon,
    required super.iconMargin,
    required super.showIconAtRight,
    super.iconColor = null,
    super.svgUrl,
  }) : super(
          buttonColor: Colors.transparent,
          hasBorder: true,
          showIcon: true,
          iconIsSvg: svgUrl != null,
        );
}

class Auth0BtnOutlineIcon extends StatelessWidget {
  const Auth0BtnOutlineIcon({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = Auth0BtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.borderColor,
    this.icon = Icons.filter_alt_outlined,
    this.iconMargin = 3.0,
    this.showIconAtRight = true,
    this.iconColor,
    this.svgUrl,
    this.borderRadius,
  });

  final String label;
  final VoidCallback? onTap;
  final BtnSize btnSize;
  final Color? labelColor;
  final FontWeight? labelFontWeight;
  final Color? borderColor;
  final IconData icon;
  final double iconMargin;
  final bool showIconAtRight;
  final Color? iconColor;
  final String? svgUrl;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _Auth0BtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _Auth0BtnOutlineIcon(
        svgUrl: svgUrl,
        labelColor: labelColor ?? Auth0Colors.primaryColor,
        labelFontWeight: labelFontWeight,
        borderColor: borderColor ?? Auth0Colors.primaryColor,
        icon: icon,
        iconColor: iconColor,
        iconMargin: iconMargin,
        showIconAtRight: showIconAtRight,
      ),
    );
  }
}

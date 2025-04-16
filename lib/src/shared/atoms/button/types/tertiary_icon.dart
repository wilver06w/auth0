part of '../btn.dart';

class _Auth0BtnTertiaryIcon extends Auth0BtnInterface {
  _Auth0BtnTertiaryIcon({
    required super.labelColor,
    required super.labelFontWeight,
    required super.icon,
    required super.iconMargin,
    required super.showIconAtRight,
    required super.showShadow,
    super.iconColor = null,
  }) : super(
          buttonColor: Auth0Colors.tertiaryColor,
          showIcon: true,
        );
}

class Auth0BtnTertiaryIcon extends StatelessWidget {
  const Auth0BtnTertiaryIcon({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = Auth0BtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.icon = Icons.arrow_forward,
    this.iconMargin = 3.0,
    this.showIconAtRight = true,
    this.showShadow = true,
    this.iconColor,
    this.borderRadius,
  });

  final String label;
  final VoidCallback? onTap;
  final BtnSize btnSize;
  final Color? labelColor;
  final FontWeight? labelFontWeight;
  final IconData icon;
  final double iconMargin;
  final bool showIconAtRight;
  final bool showShadow;
  final Color? iconColor;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _Auth0BtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _Auth0BtnTertiaryIcon(
        labelColor: labelColor ?? Auth0Colors.white,
        labelFontWeight: labelFontWeight,
        icon: icon,
        iconColor: iconColor,
        iconMargin: iconMargin,
        showIconAtRight: showIconAtRight,
        showShadow: showShadow,
      ),
    );
  }
}

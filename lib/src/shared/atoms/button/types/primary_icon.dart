part of '../btn.dart';

class _Auth0BtnPrimaryIcon extends Auth0BtnInterface {
  _Auth0BtnPrimaryIcon({
    required super.labelColor,
    required super.labelFontWeight,
    required super.icon,
    required super.iconMargin,
    required super.iconSize,
    required super.showIconAtRight,
    required super.showShadow,
    super.iconColor = null,
  }) : super(
          buttonColor: Auth0Colors.primaryColor,
          showIcon: true,
        );
}

class Auth0BtnPrimaryIcon extends StatelessWidget {
  const Auth0BtnPrimaryIcon({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = Auth0BtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.icon = Icons.arrow_forward,
    this.iconColor,
    this.iconMargin = 3.0,
    this.iconSize = 16,
    this.showIconAtRight = true,
    this.showShadow = true,
    this.borderRadius,
  });

  final String label;
  final VoidCallback? onTap;
  final BtnSize btnSize;
  final Color? labelColor;
  final Color? iconColor;
  final FontWeight? labelFontWeight;
  final IconData icon;
  final double iconMargin;
  final double iconSize;
  final bool showIconAtRight;
  final bool showShadow;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _Auth0BtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _Auth0BtnPrimaryIcon(
        labelColor: labelColor ?? Auth0Colors.white,
        labelFontWeight: labelFontWeight,
        icon: icon,
        iconColor: iconColor,
        iconMargin: iconMargin,
        showIconAtRight: showIconAtRight,
        showShadow: showShadow,
        iconSize: iconSize,
      ),
    );
  }
}

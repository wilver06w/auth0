part of '../btn.dart';

class _Auth0BtnPrimary extends Auth0BtnInterface {
  _Auth0BtnPrimary({
    required super.labelColor,
    required super.labelFontWeight,
    required super.showShadow,
    Color? backgroundColor,
  }) : super(
          buttonColor: backgroundColor ?? Auth0Colors.primaryColor,
        );
}

class Auth0BtnPrimary extends StatelessWidget {
  const Auth0BtnPrimary({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = Auth0BtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.showShadow = false,
    this.borderRadius,
    this.backgroundColor,
  });

  final String label;
  final VoidCallback? onTap;
  final BtnSize btnSize;
  final Color? labelColor;
  final FontWeight? labelFontWeight;
  final bool showShadow;
  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _Auth0BtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _Auth0BtnPrimary(
        labelColor: labelColor ?? Auth0Colors.white,
        labelFontWeight: labelFontWeight ?? FontWeight.w600,
        showShadow: showShadow,
        backgroundColor: backgroundColor,
      ),
    );
  }
}

part of '../btn.dart';

class _Auth0BtnCustom extends Auth0BtnInterface {
  _Auth0BtnCustom({
    required super.labelFontWeight,
    required super.showShadow,
    required super.labelColor,
    required super.buttonColor,
  });
}

class Auth0BtnCustom extends StatelessWidget {
  const Auth0BtnCustom({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = Auth0BtnSize.mdLittlePadding,
    this.labelFontWeight,
    this.showShadow = false,
    this.borderRadius,
    this.labelColor,
    this.buttonColor,
  });

  final String label;
  final VoidCallback? onTap;
  final BtnSize btnSize;
  final FontWeight? labelFontWeight;
  final bool showShadow;
  final BorderRadiusGeometry? borderRadius;
  final Color? labelColor;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return _Auth0BtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _Auth0BtnCustom(
        labelFontWeight: labelFontWeight ?? FontWeight.w600,
        showShadow: showShadow,
        labelColor: labelColor ?? Auth0Colors.primaryColor,
        buttonColor: buttonColor ?? Auth0Colors.dangerColor,
      ),
    );
  }
}

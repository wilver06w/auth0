part of '../btn.dart';

class _Auth0BtnContrast extends Auth0BtnInterface {
  _Auth0BtnContrast({
    required super.labelFontWeight,
    required super.showShadow,
    required super.labelColor,
  }) : super(
          buttonColor: Auth0Colors.backgroundColor,
        );
}

class Auth0BtnContrast extends StatelessWidget {
  const Auth0BtnContrast({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = Auth0BtnSize.sm,
    this.labelColor,
    this.labelFontWeight,
    this.showShadow = false,
    this.borderRadius,
  });

  final String label;
  final VoidCallback? onTap;
  final BtnSize btnSize;
  final Color? labelColor;
  final FontWeight? labelFontWeight;
  final bool showShadow;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _Auth0BtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _Auth0BtnContrast(
        labelColor: labelColor ?? Auth0Colors.primaryColor,
        labelFontWeight: labelFontWeight ?? FontWeight.w600,
        showShadow: showShadow,
      ),
    );
  }
}

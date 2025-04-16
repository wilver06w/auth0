part of '../btn.dart';

class _Auth0BtnWhite extends Auth0BtnInterface {
  _Auth0BtnWhite({
    required super.labelColor,
    required super.labelFontWeight,
    required super.showShadow,
  }) : super(
          buttonColor: Auth0Colors.white,
        );
}

class Auth0BtnWhite extends StatelessWidget {
  const Auth0BtnWhite({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = Auth0BtnSize.md,
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
      btnType: _Auth0BtnWhite(
        labelColor: labelColor ?? Auth0Colors.primaryColor,
        labelFontWeight: labelFontWeight ?? FontWeight.w600,
        showShadow: showShadow,
      ),
    );
  }
}

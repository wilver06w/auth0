part of '../btn.dart';

class _Auth0BtnDangerSecondary extends Auth0BtnInterface {
  _Auth0BtnDangerSecondary({
    required super.labelFontWeight,
    required super.labelColor,
  }) : super(
          buttonColor: Colors.transparent,
          showShadow: false,
        );
}

class Auth0BtnDangerSecondary extends StatelessWidget {
  const Auth0BtnDangerSecondary({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = Auth0BtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.borderRadius,
  });

  final String label;
  final VoidCallback? onTap;
  final BtnSize btnSize;
  final Color? labelColor;
  final FontWeight? labelFontWeight;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _Auth0BtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _Auth0BtnDangerSecondary(
        labelColor: labelColor ?? Auth0Colors.dangerColor,
        labelFontWeight: labelFontWeight,
      ),
    );
  }
}

part of '../btn.dart';

class _Auth0BtnOutline extends Auth0BtnInterface {
  _Auth0BtnOutline({
    required super.labelColor,
    required super.labelFontWeight,
    required super.borderColor,
  }) : super(
          buttonColor: Colors.transparent,
          hasBorder: true,
        );
}

class Auth0BtnOutline extends StatelessWidget {
  const Auth0BtnOutline({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = Auth0BtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.borderColor,
    this.borderRadius,
  });

  final String label;
  final VoidCallback? onTap;
  final BtnSize btnSize;
  final Color? labelColor;
  final FontWeight? labelFontWeight;
  final Color? borderColor;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _Auth0BtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _Auth0BtnOutline(
        labelColor: labelColor ?? Auth0Colors.primaryColor,
        labelFontWeight: labelFontWeight,
        borderColor: borderColor ?? Auth0Colors.primaryColor,
      ),
    );
  }
}

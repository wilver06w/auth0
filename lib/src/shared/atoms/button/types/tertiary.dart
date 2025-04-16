part of '../btn.dart';

class _Auth0BtnTertiary extends Auth0BtnInterface {
  _Auth0BtnTertiary({
    required super.labelFontWeight,
    required super.showShadow,
    required super.labelColor,
  }) : super(
          buttonColor: Auth0Colors.tertiaryColor,
        );
}

class Auth0BtnTertiary extends StatelessWidget {
  const Auth0BtnTertiary({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = Auth0BtnSize.md,
    this.labelFontWeight,
    this.showShadow = false,
    this.borderRadius,
    this.labelColor,
  });

  final String label;
  final VoidCallback? onTap;
  final BtnSize btnSize;
  final FontWeight? labelFontWeight;
  final bool showShadow;
  final BorderRadiusGeometry? borderRadius;
  final Color? labelColor;

  @override
  Widget build(BuildContext context) {
    return _Auth0BtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _Auth0BtnTertiary(
        labelFontWeight: labelFontWeight ?? FontWeight.w600,
        showShadow: showShadow,
        labelColor: labelColor ?? Auth0Colors.primaryColor,
      ),
    );
  }
}

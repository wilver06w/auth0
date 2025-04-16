part of '../btn.dart';

class _Auth0BtnDanger extends Auth0BtnInterface {
  _Auth0BtnDanger({
    required super.labelFontWeight,
    required super.showShadow,
    required super.labelColor,
  }) : super(
          buttonColor: Auth0Colors.dangerColor,
        );
}

class Auth0BtnDanger extends StatelessWidget {
  const Auth0BtnDanger({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = Auth0BtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.showShadow = true,
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
      btnType: _Auth0BtnDanger(
        labelColor: labelColor ?? Auth0Colors.white,
        labelFontWeight: labelFontWeight,
        showShadow: showShadow,
      ),
    );
  }
}

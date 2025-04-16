part of '../btn.dart';

/// Auth0BtnIconRounded.
///
/// Botón redondeado de color gris con un icono negro, el icono puede ser
/// material o un vector svg
///
/// * En primera instancia el botón intentará usar el vector svg, de ser nula
/// utilizará el icono material, debe si o si enviar uno de los dos
///
///
/// * [onPressed], (opcional) Callback que se llamará al hacer tap sobre el
/// componente.
/// * [margin], (opcional) espaciado customisado por consumidor
/// * [svgIconPath], (opcional) path del vector svg guardado en los assets de
/// la app consumidora
/// * [materialIcon], (opcional) Icono en caso de no tener svg
///
/// Ejemplo
///
/// ```dart
/// @override
/// Widget build(BuildContext context) {
///   return Auth0BtnIconRounded(
///	    onPressed: () {},
///	    margin:  EdgeInsets.only(
///		    right: 1,
///	    ),
///	    svgIconPath: 'assets/icon.svg',
///	    materialIcon: null,
///    );
///
/// }
/// ```
///
///

class _Auth0BtnIconRounded extends Auth0BtnInterface {
  _Auth0BtnIconRounded({
    required super.iconIsSvg,
    required super.icon,
    required String super.svgUrl,
    required super.showShadow,
    required Color super.iconColor,
    required super.buttonColor,
    required super.iconSize,
  }) : super(
          labelColor: Auth0Colors.primaryColor,
          iconMargin: 0,
          svgColor: Auth0Colors.white,
          btnBorderRadius: 60.0,
          showIcon: true,
        );
}

class Auth0BtnIconRounded extends StatelessWidget {
  const Auth0BtnIconRounded({
    super.key,
    VoidCallback? onPressed,
    Color? backgroundColor,
    this.margin,
    this.svgIconPath,
    this.materialIcon,
    this.radius,
    this.iconColor,
    this.iconSize,
    this.padding,
    this.showShadow = false,
    this.borderRadius,
  })  : onTap = onPressed,
        buttonColor = backgroundColor;

  final VoidCallback? onTap;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final String? svgIconPath;
  final IconData? materialIcon;
  final Color? buttonColor;
  final Color? iconColor;
  final double? iconSize;
  final double? radius;
  final bool showShadow;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      width: radius ?? Auth0Responsive.width(Auth0SpacingFoundation.xl),
      height: radius ?? Auth0Responsive.height(Auth0SpacingFoundation.xl + 5),
      child: _Auth0BtnGeneric(
        label: '',
        onTap: onTap,
        btnSize: const BtnSize(
          paddingH: 0,
          paddingV: 0,
          Auth0Text: Auth0Text.labelText,
        ),
        borderRadius: borderRadius,
        btnType: _Auth0BtnIconRounded(
          icon: materialIcon ?? Icons.ac_unit,
          iconIsSvg: svgIconPath != null,
          svgUrl: svgIconPath ?? '',
          iconSize: iconSize ?? Auth0SpacingFoundation.md,
          buttonColor: buttonColor ?? Auth0Colors.graySecondary,
          iconColor: iconColor ?? Auth0Colors.white,
          showShadow: showShadow,
        ),
      ),
    );
  }
}

part of '../btn.dart';

class _Auth0BtnGoogleMaps extends Auth0BtnInterface {
  _Auth0BtnGoogleMaps({required super.showShadow})
      : super(
          labelColor: Auth0Colors.white,
          buttonColor: Auth0Colors.white,
          iconIsSvg: true,
          showIcon: true,
          svgUrl: 'assets/icons/google_maps.svg',
          showIconAtRight: false,
          assetPackage: 'mobile_tds',
        );
}

class Auth0BtnGoogleMaps extends StatelessWidget {
  const Auth0BtnGoogleMaps({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = Auth0BtnSize.md,
    this.showShadow = true,
    this.borderRadius,
  });

  final String label;
  final VoidCallback? onTap;
  final BtnSize btnSize;
  final bool showShadow;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _Auth0BtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _Auth0BtnGoogleMaps(showShadow: showShadow),
    );
  }
}

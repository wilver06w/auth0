part of '../btn.dart';

class _Auth0BtnWaze extends Auth0BtnInterface {
  _Auth0BtnWaze({
    required super.showShadow,
  }) : super(
          labelColor: Auth0Colors.white,
          buttonColor: const Color(0xff78d0e9),
          iconIsSvg: true,
          showIcon: true,
          svgUrl: 'assets/icons/waze.svg',
          svgSize: 25,
          showIconAtRight: false,
          assetPackage: 'mobile_tds',
        );
}

class Auth0BtnWaze extends StatelessWidget {
  const Auth0BtnWaze({
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
      btnType: _Auth0BtnWaze(showShadow: showShadow),
    );
  }
}

import 'package:auth0/src/shared/atoms/button/icons/icons_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Auth0SvgIcon extends StatelessWidget {
  const Auth0SvgIcon(
    this.icon, {
    this.width,
    this.height,
    this.color,
    this.fit,
    this.alignment = Alignment.center,
    this.colorBlendMode,
    super.key,
  });

  final Auth0IconData icon;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Color? color;
  final AlignmentGeometry alignment;
  final BlendMode? colorBlendMode;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon.assetPath,
      width: width,
      height: height,
      colorFilter: color != null
          ? ColorFilter.mode(
              color!,
              colorBlendMode ?? BlendMode.srcIn,
            )
          : null,
      fit: fit ?? BoxFit.contain,
      alignment: alignment,
      package: icon.package,
    );
  }
}

import 'package:auth0/src/shared/atoms/button/icons/icons.dart';
import 'package:auth0/src/shared/atoms/button/icons/icons_data.dart';
import 'package:auth0/src/shared/atoms/button/icons/svg.dart';
import 'package:auth0/src/shared/tokens/colors.dart';
import 'package:auth0/src/shared/tokens/spacing.dart';
import 'package:auth0/src/shared/tokens/text/text.dart';
import 'package:auth0/src/shared/utils/responsive.dart';
import 'package:flutter/material.dart';

part 'types/contrast.dart';
part 'types/contrast_icon.dart';
part 'types/contrast_icon_svg.dart';
part 'types/custom.dart';
part 'types/danger.dart';
part 'types/danger_icon.dart';
part 'types/danger_icon_svg.dart';
part 'types/danger_secondary.dart';
part 'types/danger_secondary_icon.dart';
part 'types/danger_secondary_icon_svg.dart';
part 'types/google_maps.dart';
part 'types/icon_rounded.dart';
part 'types/outline.dart';
part 'types/outline_icon.dart';
part 'types/outline_icon_svg.dart';
part 'types/primary.dart';
part 'types/primary_icon.dart';
part 'types/primary_icon_svg.dart';
part 'types/primary_svg_icon.dart';
part 'types/radio_button.dart';
part 'types/secondary.dart';
part 'types/secondary_icon.dart';
part 'types/secondary_icon_svg.dart';
part 'types/tertiary.dart';
part 'types/tertiary_icon.dart';
part 'types/tertiary_icon_svg.dart';
part 'types/transparency.dart';
part 'types/waze.dart';
part 'types/white.dart';

class BtnSize {
  const BtnSize({
    required this.paddingH,
    required this.paddingV,
    required this.Auth0Text,
  });

  final Widget Function({
    Color? color,
    FontWeight? fontWeight,
    Key? key,
    required String label,
    TextAlign? textAlign,
  }) Auth0Text;
  final double paddingH;
  final double paddingV;
}

class Auth0BtnSize {
  Auth0BtnSize._();

  static const BtnSize xs = BtnSize(
    paddingH: 10,
    paddingV: 6,
    Auth0Text: Auth0Text.small,
  );

  static const BtnSize sm = BtnSize(
    paddingH: 18,
    paddingV: 8,
    Auth0Text: Auth0Text.small,
  );
  static const BtnSize sl = BtnSize(
    paddingH: 19,
    paddingV: 12,
    Auth0Text: Auth0Text.small,
  );
  static const BtnSize md = BtnSize(
    paddingH: 20,
    paddingV: 15,
    Auth0Text: Auth0Text.labelText,
  );
  static const BtnSize mdLittlePadding = BtnSize(
    paddingH: 13,
    paddingV: 7,
    Auth0Text: Auth0Text.labelText,
  );

  static const BtnSize mdLittlePaddingBold = BtnSize(
    paddingH: 10,
    paddingV: 5,
    Auth0Text: Auth0Text.labelText,
  );

  static const BtnSize lg = BtnSize(
    paddingH: 24,
    paddingV: 14,
    Auth0Text: Auth0Text.body,
  );
  static const BtnSize xl = BtnSize(
    paddingH: 28,
    paddingV: 20,
    Auth0Text: Auth0Text.h6,
  );
  static const BtnSize lgBold = BtnSize(
    paddingH: 24,
    paddingV: 15,
    Auth0Text: Auth0Text.fontBold,
  );
  static const BtnSize lgLittlePadding = BtnSize(
    paddingH: 10,
    paddingV: 5,
    Auth0Text: Auth0Text.body,
  );
  static const BtnSize lgLittlePaddingBold = BtnSize(
    paddingH: 10,
    paddingV: 5,
    Auth0Text: Auth0Text.fontBold,
  );
  static const BtnSize long = BtnSize(
    paddingH: 35,
    paddingV: 5,
    Auth0Text: Auth0Text.labelText,
  );
  static const BtnSize big = BtnSize(
    paddingH: 45,
    paddingV: 14,
    Auth0Text: Auth0Text.fontBold,
  );
}

class Auth0BtnInterface {
  Auth0BtnInterface({
    required this.buttonColor,
    required this.labelColor,
    this.assetPackage,
    this.borderColor = Colors.white,
    this.btnBorderRadius = 25.0,
    this.btnSize = Auth0BtnSize.md,
    this.hasBorder = false,
    this.icon = Icons.arrow_forward,
    this.iconColor = Colors.black,
    this.svgUrlDisabled,
    this.iconIsSvg = false,
    this.iconMargin = 8,
    this.iconSize = 16,
    this.iconSvg,
    this.labelFontWeight,
    this.showIcon = false,
    this.showIconAtRight = true,
    this.showShadow = false,
    this.svgColor,
    this.svgSize = 16,
    this.svgUrl,
  });

  Color buttonColor;
  Color labelColor;
  final BtnSize btnSize;
  final Color borderColor;
  final Color? iconColor;
  final Color? svgColor;
  final FontWeight? labelFontWeight;
  final IconData icon;
  final String? assetPackage;
  final String? svgUrlDisabled;
  final String? svgUrl;
  final Auth0IconData? iconSvg;
  final bool hasBorder;
  final bool iconIsSvg;
  final bool showIcon;
  final bool showIconAtRight;
  final bool showShadow;
  final double btnBorderRadius;
  final double iconMargin;
  final double iconSize;
  final double svgSize;
}

//TODo - Refactor Auth0Btn, just use directly the needed buttons
class Auth0Btn extends StatelessWidget {
  const Auth0Btn({
    super.key,
    required this.label,
    required this.onTap,
    this.border = false,
    this.borderRadius,
    this.btnSize,
    this.colorBorder = Colors.white,
    this.colorButton,
    this.colorIcon = Colors.black,
    this.colorImg,
    this.colorText,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w600,
    this.icon = false,
    this.iconData = Icons.arrow_forward,
    this.iconMargin = Auth0SpacingFoundation.lg,
    this.iconRight = true,
    this.imgSvg = false,
    this.imgUrl,
    this.paddingH = 20,
    this.paddingV = 15,
    this.showShadow = false,
    this.sizeIcon = 16,
    this.sizeImg = 25,
    this.svgUrlDisabled,
  });

  final BorderRadiusGeometry? borderRadius;
  final BtnSize? btnSize;
  final Color colorBorder;
  final String? svgUrlDisabled;
  final Color colorIcon;
  final Color? colorButton;
  final Color? colorImg;
  final Color? colorText;
  final FontWeight fontWeight;
  final GestureTapCallback? onTap;
  final IconData iconData;
  final String label;
  final String? imgUrl;
  final bool border;
  final bool icon;
  final bool iconRight;
  final bool imgSvg;
  final bool showShadow;
  final double fontSize;
  final double iconMargin;
  final double paddingH;
  final double paddingV;
  final double sizeIcon;
  final double sizeImg;

  @override
  Widget build(BuildContext context) {
    return _Auth0BtnGeneric(
      borderRadius: borderRadius,
      label: label,
      onTap: onTap,
      btnSize: btnSize ??
          BtnSize(
            paddingH: paddingH,
            paddingV: paddingV,
            Auth0Text: Auth0Text.labelText,
          ),
      btnType: Auth0BtnInterface(
        borderColor: colorBorder,
        buttonColor: colorButton ?? Auth0Colors.primaryColor,
        hasBorder: border,
        icon: iconData,
        iconColor: colorIcon,
        iconIsSvg: imgSvg,
        iconMargin: iconMargin,
        svgUrlDisabled: svgUrlDisabled,
        iconSize: sizeIcon,
        labelColor: colorText ?? Auth0Colors.white,
        labelFontWeight: fontWeight,
        showIcon: icon,
        showIconAtRight: iconRight,
        showShadow: showShadow,
        svgColor: colorImg,
        svgSize: sizeImg,
        svgUrl: imgUrl,
      ),
    );
  }
}

class _Auth0BtnGeneric extends StatelessWidget {
  const _Auth0BtnGeneric({
    required this.btnSize,
    required this.btnType,
    required this.label,
    required this.onTap,
    this.borderRadius,
    this.grayLetters = false,
    this.transparentColorDisabledButton = false,
    this.whiteLetters = false,
  });

  final BorderRadiusGeometry? borderRadius;
  final BtnSize btnSize;
  final GestureTapCallback? onTap;
  final String label;
  final Auth0BtnInterface btnType;
  final bool transparentColorDisabledButton;
  final bool grayLetters;
  final bool whiteLetters;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return transparentColorDisabledButton
                    ? Colors.transparent
                    : whiteLetters
                        ? Auth0Colors.chineseSilver
                        : btnType.buttonColor == Colors.transparent
                            ? Auth0Colors.chineseSilver.withOpacity(0.2)
                            : Auth0Colors.chineseSilver;
              }
              return btnType.buttonColor;
            },
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: borderRadius ??
                  BorderRadius.circular(btnType.btnBorderRadius),
              side: btnType.hasBorder
                  ? BorderSide(
                      color: btnType.borderColor,
                    )
                  : BorderSide.none,
            ),
          ),
          shadowColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return btnType.buttonColor == Colors.transparent
                    ? Colors.transparent
                    : Auth0Colors.chineseSilver.withOpacity(0.6);
              }
              return btnType.buttonColor.withOpacity(0.6);
            },
          ),
          elevation: WidgetStateProperty.all(btnType.showShadow ? 8 : 0),
          padding: WidgetStateProperty.all(
            EdgeInsets.symmetric(
              vertical: btnSize.paddingV,
              horizontal: btnSize.paddingH,
            ),
          ),
          foregroundColor: WidgetStateProperty.all(
            btnType.buttonColor.withOpacity(0.6),
          ),
        ),
        onPressed: onTap,
        child: !btnType.showIcon ? _text() : _textIcon(),
      ),
    );
  }

  Widget _text() {
    return btnSize.Auth0Text(
      textAlign: TextAlign.center,
      label: label,
      color: onTap == null
          ? whiteLetters
              ? Auth0Colors.antiFlashWhite
              : grayLetters
                  ? Auth0Colors.chineseSilver
                  : Auth0Colors.sonicSilver
          : btnType.labelColor,
      fontWeight: btnType.labelFontWeight,
    );
  }

  Widget _buildIcon() {
    return !btnType.iconIsSvg
        ? Icon(
            btnType.icon,
            color: onTap == null
                ? Auth0Colors.silverFoil
                : btnType.iconColor ?? Auth0Colors.black,
            size: btnType.iconSize,
          )
        : btnType.iconSvg != null
            ? Auth0SvgIcon(
                btnType.iconSvg!,
                width: btnType.svgSize,
                color:
                    onTap == null ? Auth0Colors.sonicSilver : btnType.svgColor,
              )
            : onTap == null
                ? (btnType.svgUrlDisabled ?? '').isNotEmpty
                    ? Auth0SvgBuilder(
                        btnType.svgUrlDisabled ?? '',
                        width: btnType.svgSize,
                        package: btnType.assetPackage,
                      )
                    : Auth0SvgBuilder(
                        btnType.svgUrl ?? '',
                        width: btnType.svgSize,
                        color: onTap == null
                            ? Auth0Colors.sonicSilver
                            : btnType.svgColor,
                        package: btnType.assetPackage,
                      )
                : Auth0SvgBuilder(
                    btnType.svgUrl ?? '',
                    width: btnType.svgSize,
                    color: onTap == null
                        ? Auth0Colors.sonicSilver
                        : btnType.svgColor,
                    package: btnType.assetPackage,
                  );
  }

  Widget _textIcon() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        !btnType.showIconAtRight
            ? Flexible(
                child: Container(
                  margin: EdgeInsets.only(right: btnType.iconMargin),
                  child: _buildIcon(),
                ),
              )
            : const SizedBox.shrink(),
        _text(),
        btnType.showIconAtRight
            ? Container(
                margin: EdgeInsets.only(left: btnType.iconMargin),
                child: _buildIcon(),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}

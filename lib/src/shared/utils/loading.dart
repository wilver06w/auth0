import 'package:auth0/src/shared/tokens/spacing.dart';
import 'package:auth0/src/shared/utils/auth0_ui.dart';
import 'package:auth0/src/shared/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Auth0Loading {
  static void show(
    BuildContext context, {
    bool isClient = false,
    bool useRootNavigator = false,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      useRootNavigator: useRootNavigator,
      builder: (_) {
        return PopScope(
          canPop: false,
          child: Lottie.asset(
            Auth0noPayClientUi.animationLoadingFetch,
            height: Auth0Responsive.heightSizeByContext(
              context,
              pixels: Auth0SpacingFoundation.xxs,
            ),
            width: Auth0Responsive.withSizeByContext(
              context,
              pixels: Auth0SpacingFoundation.xxs,
            ),
          ),
        );
      },
    );
  }
}

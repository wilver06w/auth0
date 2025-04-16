import 'package:flutter_modular/flutter_modular.dart';

class Auth0Route {
  static Future<Object?> navHome() {
    return Modular.to.pushNamedAndRemoveUntil(
      '/home/',
      (dynamic route) => false,
    );
  }

  static Future<Object?> navAppReload() {
    return Modular.to.pushNamedAndRemoveUntil(
      '/',
      (dynamic route) => false,
    );
  }
}

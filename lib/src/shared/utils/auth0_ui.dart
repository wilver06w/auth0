import 'package:flutter/material.dart';

class Auth0noPayClientUi {
  static const String auth0Title = '© 2024 Auth0Pragma';
  static const String idTitle = 'Id';
  static const String animationLoadingFetch =
      'images/animations/loading_fetch.json';
  static const String logoPragma =
      'https://bitacora.pragma.com.co/assets/img/simbolo_blanco.svg';

  static final Shader linearGradient = const LinearGradient(colors: <Color>[
    Color.fromRGBO(255, 79, 64, 100),
    Color.fromRGBO(255, 68, 221, 100)
  ], begin: Alignment.topLeft, end: Alignment.bottomRight)
      .createShader(
    const Rect.fromLTWH(
      0.0,
      0.0,
      500.0,
      70.0,
    ),
  );
}

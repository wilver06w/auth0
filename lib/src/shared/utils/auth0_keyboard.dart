import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:auth0/src/shared/config/main/bloc/bloc.dart' as app;

class Auth0Keyboard {
  static Future<void> close() async {
    FocusManager.instance.primaryFocus?.unfocus();
    await Future.delayed(Duration.zero, () {});
    Modular.get<app.Bloc>().add(app.CloseKeyboardEvent());
  }
}

import 'package:auth0/src/shared/config/client_config.dart';
import 'package:dart_ipify/dart_ipify.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:package_info_plus/package_info_plus.dart';

class App {
  App._();
  static final instance = App._();

  String version = '';
  String devicesName = '';
  bool canUseNativeNFC = false;

  Future<void> init() async {
    await dotenv.load();
    await _setPreferredOrientations();

    try {
      version = (await PackageInfo.fromPlatform()).version;
    } catch (_) {}
  }

  Future<void> _setPreferredOrientations() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  Future<String> getIp() async {
    final app = Modular.get<AppConfig>();
    return app.ip = await Ipify.ipv4();
  }

  Locale localeCallBack(Locale? locale, Iterable<Locale> supportedLocales) {
    if (locale == null) return supportedLocales.first;

    for (final supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode &&
          supportedLocale.countryCode == locale.countryCode) {
        return supportedLocale;
      }
    }

    return supportedLocales.first;
  }
}

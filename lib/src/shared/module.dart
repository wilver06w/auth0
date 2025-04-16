import 'package:auth0/src/features/home/module.dart';
import 'package:auth0/src/features/splash/presentation/page.dart' as splash;
import 'package:flutter_modular/flutter_modular.dart';

class GlobalModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r
      ..child(
        Modular.initialRoute,
        child: (context) => const splash.Page(),
      )
      ..module(
        '/home',
        module: HomeModule(),
      );
  }
}

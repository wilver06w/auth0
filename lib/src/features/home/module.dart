import 'package:auth0/src/features/home/presentation/page.dart' as home;
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,
      child: (context) => const home.Page(),
    );
  }
}

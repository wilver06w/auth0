import 'package:auth0/src/features/home/inject.dart';
import 'package:auth0/src/features/splash/inject.dart';
import 'package:auth0/src/shared/auth_provider.dart';
import 'package:auth0/src/shared/config/client_config.dart';
import 'package:auth0/src/shared/module.dart';
import 'package:auth0/src/shared/config/main/bloc/bloc.dart' as app;
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton<AppConfig>(AppConfig.new);
    i.addSingleton<AuthProvider>(AuthProvider.new);
    i.addSingleton<app.Bloc>(app.Bloc.new);
    InjectSplash.binds(i);
    InjectHome.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.module(
      '/',
      module: GlobalModule(),
      transition: TransitionType.fadeIn,
    );
  }
}

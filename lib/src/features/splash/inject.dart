import 'package:auth0/src/features/splash/data/data_sources/remote/splash_impl_api.dart';
import 'package:auth0/src/features/splash/data/repositories/home_repo_impl.dart';
import 'package:auth0/src/features/splash/domain/repositories/abstract_home_repository.dart';
import 'package:auth0/src/features/splash/domain/usecases/getcredentials_usecase.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InjectSplash {
  static void binds(Injector i) {
    i
      ..addLazySingleton<SplashImplApiRemote>(SplashImplApiRemote.new)
      ..addLazySingleton<AbstractSplashRepository>(CryptoRepositoryImpl.new)
      ..addLazySingleton<GetCredentialsSplashUseCase>(
        GetCredentialsSplashUseCase.new,
      );
  }
}

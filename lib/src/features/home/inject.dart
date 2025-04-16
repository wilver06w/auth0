import 'package:auth0/src/features/home/data/data_sources/remote/home_impl_api.dart';
import 'package:auth0/src/features/home/data/repositories/home_repo_impl.dart';
import 'package:auth0/src/features/home/domain/repositories/abstract_home_repository.dart';
import 'package:auth0/src/features/home/domain/usecases/getcredentials_usecase.dart';
import 'package:auth0/src/features/home/domain/usecases/login_credentials_usecase.dart';
import 'package:auth0/src/features/home/domain/usecases/logout_user_usecase.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InjectHome {
  static void binds(Injector i) {
    i
      ..addLazySingleton<HomeImplApiRemote>(HomeImplApiRemote.new)
      ..addLazySingleton<AbstractHomeRepository>(HomeRepositoryImpl.new)
      ..addLazySingleton<GetCredentialsHomeUseCase>(
        GetCredentialsHomeUseCase.new,
      )
      ..addLazySingleton<SetLoginCredentialsHomeUseCase>(
        SetLoginCredentialsHomeUseCase.new,
      )
      ..addLazySingleton<SetLogoutHomeUseCase>(
        SetLogoutHomeUseCase.new,
      );
  }
}

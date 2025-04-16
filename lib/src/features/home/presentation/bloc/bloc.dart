import 'package:auth0/src/features/home/domain/usecases/getcredentials_usecase.dart';
import 'package:auth0/src/features/home/domain/usecases/login_credentials_usecase.dart';
import 'package:auth0/src/features/home/domain/usecases/logout_user_usecase.dart';
import 'package:auth0/src/shared/auth_provider.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'event.dart';
part 'state.dart';

class BlocHome extends Bloc<HomeEvent, HomeState> {
  BlocHome({
    required this.authProvider,
    required this.getCredentialsSplashUseCase,
    required this.setLoginCredentialsHomeUseCase,
    required this.setLogoutHomeUseCase,
  }) : super(const InitialState(Model())) {
    on<LoadInfoUserEvent>(_onLoadInfoUserEvent);
    on<LoginUserEvent>(_onLoginUserEvent);
    on<LogoutUserEvent>(_onLogoutUserEvent);
  }

  final AuthProvider authProvider;
  final GetCredentialsHomeUseCase getCredentialsSplashUseCase;
  final SetLoginCredentialsHomeUseCase setLoginCredentialsHomeUseCase;
  final SetLogoutHomeUseCase setLogoutHomeUseCase;

  Future<void> _onLoadInfoUserEvent(
    LoadInfoUserEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(LoadingInfoUserState(state.model));

    final credentials = await getCredentialsSplashUseCase.getCredentials();

    credentials.fold((l) {
      emit(
        ErrorInfoUserState(
          model: state.model,
          message: l.errorMessage,
        ),
      );
    }, (r) {
      authProvider.setCredentials(r);
      emit(
        LoadedInfoUserState(
          model: state.model,
        ),
      );
    });
  }

  Future<void> _onLoginUserEvent(
    LoginUserEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(LoadingUserLoginState(state.model));

    final credentials = await setLoginCredentialsHomeUseCase.setLogin();

    credentials.fold((l) {
      emit(
        ErrorUserLoginState(
          model: state.model,
          message: l.errorMessage,
        ),
      );
    }, (r) {
      authProvider.setCredentials(r);
      emit(
        LoadedUserLoginState(
          state.model,
        ),
      );
    });
  }

  Future<void> _onLogoutUserEvent(
    LogoutUserEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(LoadingLogoutUserState(state.model));

    final credentials = await setLogoutHomeUseCase.setLogout();

    credentials.fold((l) {
      emit(
        ErrorLogoutUserState(
          model: state.model,
          message: l.errorMessage,
        ),
      );
    }, (r) {
      authProvider.clear();
      emit(
        LoadedLogoutUserState(
          state.model,
        ),
      );
    });
  }
}

import 'package:auth0/src/features/splash/domain/usecases/getcredentials_usecase.dart';
import 'package:auth0/src/shared/auth_provider.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'event.dart';
part 'state.dart';

class BlocSplash extends Bloc<SplashEvent, SplashState> {
  BlocSplash({
    required this.authProvider,
    required this.getCredentialsSplashUseCase,
  }) : super(const InitialState(Model())) {
    on<LoadInfoUserEvent>(_onLoadInfoUserEvent);
  }

  final AuthProvider authProvider;
  final GetCredentialsSplashUseCase getCredentialsSplashUseCase;

  Future<void> _onLoadInfoUserEvent(
    LoadInfoUserEvent event,
    Emitter<SplashState> emit,
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
}

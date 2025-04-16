part of 'bloc.dart';

abstract class SplashState extends Equatable {
  const SplashState(this.model);
  final Model model;

  @override
  List<Object?> get props => [model];
}

class InitialState extends SplashState {
  const InitialState(super.model);
}

class LoadingInfoUserState extends SplashState {
  const LoadingInfoUserState(super.model);
}

class LoadedInfoUserState extends SplashState {
  const LoadedInfoUserState({
    required Model model,
  }) : super(model);
}

class ErrorInfoUserState extends SplashState {
  const ErrorInfoUserState({
    required Model model,
    this.message = '',
  }) : super(model);

  final String message;
}

class Model extends Equatable {
  const Model();

  Model copyWith() {
    return const Model();
  }

  @override
  List<Object?> get props {
    return [];
  }
}

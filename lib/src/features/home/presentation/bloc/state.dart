part of 'bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState(this.model);
  final Model model;

  @override
  List<Object?> get props => [model];
}

class InitialState extends HomeState {
  const InitialState(super.model);
}

class LoadingInfoUserState extends HomeState {
  const LoadingInfoUserState(super.model);
}

class LoadedInfoUserState extends HomeState {
  const LoadedInfoUserState({
    required Model model,
  }) : super(model);
}

class ErrorInfoUserState extends HomeState {
  const ErrorInfoUserState({
    required Model model,
    this.message = '',
  }) : super(model);

  final String message;
}

class LoadingUserLoginState extends HomeState {
  const LoadingUserLoginState(super.model);
}

class LoadedUserLoginState extends HomeState {
  const LoadedUserLoginState(super.model);
}

class ErrorUserLoginState extends HomeState {
  const ErrorUserLoginState({
    required Model model,
    this.message = '',
  }) : super(model);

  final String message;
}

class LoadingLogoutUserState extends HomeState {
  const LoadingLogoutUserState(super.model);
}

class LoadedLogoutUserState extends HomeState {
  const LoadedLogoutUserState(super.model);
}

class ErrorLogoutUserState extends HomeState {
  const ErrorLogoutUserState({
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

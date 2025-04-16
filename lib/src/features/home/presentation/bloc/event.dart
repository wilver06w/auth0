part of 'bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class LoadInfoUserEvent extends HomeEvent {}

class LoginUserEvent extends HomeEvent {}

class LogoutUserEvent extends HomeEvent {}

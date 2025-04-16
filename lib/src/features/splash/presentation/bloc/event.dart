part of 'bloc.dart';

abstract class SplashEvent extends Equatable {
  const SplashEvent();

  @override
  List<Object> get props => [];
}

class LoadInfoUserEvent extends SplashEvent {}

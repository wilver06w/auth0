part of 'bloc.dart';

@immutable
abstract class State extends Equatable {
  const State(this.model);
  final Model model;

  @override
  List<Object?> get props => [model];
}

class InitialState extends State {
  const InitialState(super.model);
}

class ChangedKeyState extends State {
  const ChangedKeyState(super.model);
}

class CloseKeyboardState extends State {
  const CloseKeyboardState(super.model);
}

class FailureState extends State {
  const FailureState({
    required Model model,
    required this.error,
    required this.lastState,
  }) : super(model);
  final String error;
  final State lastState;

  @override
  List<Object?> get props => [error, lastState, model];
}

class Model extends Equatable {
  const Model({required this.key});
  final UniqueKey key;

  Model copyWith({
    UniqueKey? key,
  }) =>
      Model(
        key: key ?? this.key,
      );

  @override
  List<Object?> get props => [key];
}

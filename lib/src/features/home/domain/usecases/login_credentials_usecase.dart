import 'package:auth0/src/features/home/domain/repositories/abstract_home_repository.dart';
import 'package:auth0/src/shared/utils/usecases/failures.dart';
import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:dartz/dartz.dart';

class SetLoginCredentialsHomeUseCase {
  SetLoginCredentialsHomeUseCase({
    required this.repository,
  });

  final AbstractHomeRepository repository;

  Future<Either<Failure, Credentials>> setLogin() async {
    final result = await repository.setLogin();

    return result.fold(Left.new, Right.new);
  }
}

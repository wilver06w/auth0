import 'package:auth0/src/features/splash/domain/repositories/abstract_home_repository.dart';
import 'package:auth0/src/shared/utils/usecases/failures.dart';
import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:dartz/dartz.dart';

class GetCredentialsSplashUseCase {
  GetCredentialsSplashUseCase({required this.repository});
  final AbstractSplashRepository repository;

  Future<Either<Failure, Credentials>> getCredentials() async {
    final result = await repository.getCredentials();

    return result.fold(Left.new, Right.new);
  }
}

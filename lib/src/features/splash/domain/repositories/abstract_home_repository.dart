import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:dartz/dartz.dart';
import 'package:auth0/src/shared/utils/usecases/failures.dart';

abstract class AbstractSplashRepository {
  Future<Either<Failure, Credentials>> getCredentials();
}

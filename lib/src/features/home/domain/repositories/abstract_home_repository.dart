import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:dartz/dartz.dart';
import 'package:auth0/src/shared/utils/usecases/failures.dart';

abstract class AbstractHomeRepository {
  Future<Either<Failure, Credentials>> getCredentials();
  Future<Either<Failure, Credentials>> setLogin();
  Future<Either<Failure, bool>> setLogout();
}

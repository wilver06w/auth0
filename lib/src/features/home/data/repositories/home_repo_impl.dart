import 'package:auth0/src/features/home/data/data_sources/remote/home_impl_api.dart';
import 'package:auth0/src/features/home/domain/repositories/abstract_home_repository.dart';
import 'package:auth0/src/shared/utils/exceptions.dart';
import 'package:auth0/src/shared/utils/usecases/failures.dart';
import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoryImpl extends AbstractHomeRepository {
  HomeRepositoryImpl({
    required this.apiRemote,
  });
  final HomeImplApiRemote apiRemote;

  @override
  Future<Either<Failure, Credentials>> getCredentials() async {
    try {
      final result = await apiRemote.getCredentials();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, e.statusCode));
    } on CancelTokenException catch (e) {
      return Left(CancelTokenFailure(e.message, e.statusCode));
    }
  }

  @override
  Future<Either<Failure, Credentials>> setLogin() async {
    try {
      final result = await apiRemote.setLogin();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, e.statusCode));
    } on CancelTokenException catch (e) {
      return Left(CancelTokenFailure(e.message, e.statusCode));
    }
  }

  @override
  Future<Either<Failure, bool>> setLogout() async {
    try {
      final result = await apiRemote.setLogout();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, e.statusCode));
    } on CancelTokenException catch (e) {
      return Left(CancelTokenFailure(e.message, e.statusCode));
    }
  }
}

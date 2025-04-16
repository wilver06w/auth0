import 'package:auth0/src/features/splash/data/data_sources/remote/splash_impl_api.dart';
import 'package:auth0/src/features/splash/domain/repositories/abstract_home_repository.dart';
import 'package:auth0/src/shared/utils/exceptions.dart';
import 'package:auth0/src/shared/utils/usecases/failures.dart';
import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:dartz/dartz.dart';

class CryptoRepositoryImpl extends AbstractSplashRepository {
  CryptoRepositoryImpl({
    required this.apiRemote,
  });
  final SplashImplApiRemote apiRemote;

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
}

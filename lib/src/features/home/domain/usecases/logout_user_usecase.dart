import 'package:auth0/src/features/home/domain/repositories/abstract_home_repository.dart';
import 'package:auth0/src/shared/utils/usecases/failures.dart';
import 'package:dartz/dartz.dart';

class SetLogoutHomeUseCase {
  SetLogoutHomeUseCase({
    required this.repository,
  });

  final AbstractHomeRepository repository;

  Future<Either<Failure, bool>> setLogout() async {
    final result = await repository.setLogout();

    return result.fold(Left.new, Right.new);
  }
}

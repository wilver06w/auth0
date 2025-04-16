import 'package:auth0/src/features/splash/data/data_sources/remote/abstract_splash_api_remote.dart';
import 'package:auth0/src/shared/auth_provider.dart';
import 'package:auth0/src/shared/utils/exceptions.dart';
import 'package:auth0_flutter/auth0_flutter.dart';

class SplashImplApiRemote extends AbstractSplashApiRemote {
  SplashImplApiRemote({required this.authProvider});

  final AuthProvider authProvider;

  @override
  Future<Credentials> getCredentials() async {
    try {
      final credentials =
          await authProvider.auth0.credentialsManager.credentials();

      return credentials;
    } on ServerException catch (e) {
      throw ServerException(e.message, e.statusCode);
    } catch (e) {
      throw ServerException(e.toString(), 500);
    }
  }
}

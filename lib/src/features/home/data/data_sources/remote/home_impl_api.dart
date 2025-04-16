import 'package:auth0/src/features/home/data/data_sources/remote/abstract_home_api_remote.dart';
import 'package:auth0/src/shared/auth_provider.dart';
import 'package:auth0/src/shared/utils/exceptions.dart';
import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HomeImplApiRemote extends AbstractHomehApiRemote {
  HomeImplApiRemote({required this.auth});

  final AuthProvider auth;

  @override
  Future<Credentials> getCredentials() async {
    try {
      final credentials = await auth.auth0.credentialsManager.credentials();

      return credentials;
    } on ServerException catch (e) {
      throw ServerException(e.message, e.statusCode);
    } catch (e) {
      throw ServerException(e.toString(), 500);
    }
  }

  @override
  Future<Credentials> setLogin() async {
    try {
      var credentials = await auth.auth0
          .webAuthentication(
            scheme: dotenv.env['AUTH0_CUSTOM_SCHEME'],
          )
          .login(
            useHTTPS: true,
          );
      return credentials;
    } on ServerException catch (e) {
      throw ServerException(e.message, e.statusCode);
    } catch (e) {
      throw ServerException(e.toString(), 500);
    }
  }

  @override
  Future<bool> setLogout() async {
    try {
      await auth.auth0
          .webAuthentication(scheme: dotenv.env['AUTH0_CUSTOM_SCHEME'])
          .logout(useHTTPS: true);
      return true;
    } on ServerException catch (e) {
      throw ServerException(e.message, e.statusCode);
    } catch (e) {
      throw ServerException(e.toString(), 500);
    }
  }
}

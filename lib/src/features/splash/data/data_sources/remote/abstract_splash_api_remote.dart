import 'package:auth0_flutter/auth0_flutter.dart';

abstract class AbstractSplashApiRemote {
  Future<Credentials> getCredentials();
}

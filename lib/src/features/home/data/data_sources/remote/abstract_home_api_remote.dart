import 'package:auth0_flutter/auth0_flutter.dart';

abstract class AbstractHomehApiRemote {
  Future<Credentials> getCredentials();
  Future<Credentials> setLogin();
  Future<bool> setLogout();
}

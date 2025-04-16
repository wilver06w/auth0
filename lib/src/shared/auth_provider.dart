import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  AuthProvider({Auth0? auth0})
      : _auth0 = auth0 ?? Auth0(
          dotenv.env['AUTH0_DOMAIN'] ?? '',
          dotenv.env['AUTH0_CLIENT_ID'] ?? '',
        );

  final Auth0 _auth0;
  Credentials? _credentials;

  Auth0 get auth0 => _auth0;
  Credentials? get credentials => _credentials;

  void setCredentials(Credentials? newCredentials) {
    _credentials = newCredentials;
    notifyListeners();
  }

  void clear() {
    _credentials = null;
    notifyListeners();
  }
}

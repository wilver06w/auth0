class AppConfig {
  factory AppConfig() => _singleton;

  AppConfig._();
  static final AppConfig _singleton = AppConfig._();

  String ip = '';
  String version = '0';
  String deviceNames = '';
  bool isEnabledNFCNative = false;
}

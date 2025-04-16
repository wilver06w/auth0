import 'dart:async';
import 'dart:developer';

import 'package:auth0/src/shared/tokens/colors.dart';
import 'package:auth0/src/shared/tokens/text/text.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class InternetConnectionWidget extends StatefulWidget {
  final Widget child;
  final String text;

  const InternetConnectionWidget({
    super.key,
    required this.child,
    required this.text,
  });

  @override
  State<InternetConnectionWidget> createState() =>
      _InternetConnectionWidgetState();
}

class _InternetConnectionWidgetState extends State<InternetConnectionWidget> {
  final ValueNotifier<bool> _valueIsDevice = ValueNotifier<bool>(true);
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;

  @override
  void initState() {
    initConnectivity();

    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
    InternetConnectionChecker()
        .hasConnection
        .then((value) => _valueIsDevice.value = value);
    super.initState();
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();

    super.dispose();
  }

// Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initConnectivity() async {
    late List<ConnectivityResult> result;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      log('Couldn\'t check connectivity status', error: e);
      return;
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(List<ConnectivityResult> result) async {
    final response = result.first != ConnectivityResult.none;
    _valueIsDevice.value = response;
    log('Connectivity changed: $response');
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        ValueListenableBuilder<bool>(
          builder: (BuildContext context, bool value, Widget? child) {
            return Visibility(
              visible: !value,
              child: SafeArea(
                child: Container(
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  color: Auth0Colors.aeroBlue,
                  height: !value ? 16.0 : 0.0,
                  child: Auth0TextMedium(
                    widget.text,
                  ),
                ),
              ),
            );
          },
          valueListenable: _valueIsDevice,
        ),
      ],
    );
  }
}

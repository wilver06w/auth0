import 'package:equatable/equatable.dart';

/// Exception occur when server failure
class ServerException extends Equatable implements Exception {
  const ServerException(this.message, this.statusCode);
  final String message;
  final int? statusCode;

  @override
  List<Object?> get props => [message, statusCode];
}

/// Exception occur when call api over on time
class CancelTokenException implements Exception {
  CancelTokenException(this.message, this.statusCode);
  final String message;
  final int? statusCode;
}

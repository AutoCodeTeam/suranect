import 'package:equatable/equatable.dart';
import 'package:suranect/app/network/base/api_error.dart';

abstract class Failure extends Equatable {}

class EmptyFailure extends Failure {
  @override
  List<Object> get props => [];
}

class ConnectionFailure extends Failure {
  @override
  List<Object> get props => [];
}

class ApiFailure extends Failure {
  final List<ApiError> error;

  @override
  List<Object?> get props => [error];

  ApiFailure({
    required this.error
  });
}

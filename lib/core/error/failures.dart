import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  List properties;
  Failure([this.properties = const <dynamic>[]]) : super();

  @override
  List<Object> get props => [this.properties];
}

class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class NoConnectionFailure extends Failure {}

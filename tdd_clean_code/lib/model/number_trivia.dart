import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:equatable/equatable.dart';

class NumberTrivia extends Equatable {
  final String text;
  final int number;

  NumberTrivia(this.text, this.number);

  @override
  List<Object?> get props => throw UnimplementedError();
}

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final DataConnectionChecker connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}

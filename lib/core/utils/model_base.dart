import 'package:equatable/equatable.dart';

class EntitiesModel extends Equatable {
  List<dynamic> properties;

  EntitiesModel({required this.properties});

  @override
  List<Object?> get props => properties;
}

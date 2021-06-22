import 'package:equatable/equatable.dart';

class SonGelirler extends Equatable {
  final List<Params> properties;

  SonGelirler({required this.properties});

  @override
  List<Object?> get props => [this.properties];
}

class Params extends Equatable {
  final String hesap_adi;
  final double islem_tutar;

  Params({
    required this.hesap_adi,
    required this.islem_tutar,
  });

  @override
  List<Object?> get props => [
        this.hesap_adi,
        this.islem_tutar,
      ];
}

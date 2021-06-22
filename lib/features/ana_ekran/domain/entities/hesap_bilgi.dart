import 'package:equatable/equatable.dart';

class HesapBilgi extends Equatable {
  final List<Params> properties;

  HesapBilgi({required this.properties});

  @override
  List<Object?> get props => [this.properties];
}

class Params extends Equatable {
  final String hesap_adi;
  final double hesap_bakiye;

  Params({
    required this.hesap_adi,
    required this.hesap_bakiye,
  });

  @override
  List<Object?> get props => [
        this.hesap_adi,
        this.hesap_bakiye,
      ];
}

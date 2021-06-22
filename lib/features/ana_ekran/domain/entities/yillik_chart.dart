import 'package:equatable/equatable.dart';

class YillikChart extends Equatable {
  final List<Params> aylik_gelir;
  final List<Params> aylik_gider;
  final List<Params> aylik_kar;

  YillikChart({
    required this.aylik_gelir,
    required this.aylik_gider,
    required this.aylik_kar,
  });

  @override
  List<Object?> get props => [
        this.aylik_gelir,
        this.aylik_gider,
        this.aylik_kar,
      ];
}

class Params extends Equatable {
  final String ay_bilgisi;
  final double ay_degeri;

  Params({
    required this.ay_bilgisi,
    required this.ay_degeri,
  });

  @override
  List<Object?> get props => [
        this.ay_bilgisi,
        this.ay_degeri,
      ];
}

import 'package:equatable/equatable.dart';

class ToplamGider extends Equatable {
  final double toplam_gider;
  final double gecikmis_fatura;

  ToplamGider({
    required this.toplam_gider,
    required this.gecikmis_fatura,
  });

  @override
  List<Object?> get props => [
        this.toplam_gider,
        this.gecikmis_fatura,
      ];
}

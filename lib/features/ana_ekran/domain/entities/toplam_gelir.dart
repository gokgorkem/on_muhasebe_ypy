import 'package:equatable/equatable.dart';

class ToplamGelir extends Equatable {
  final double toplam_gelir;
  final double gecikmis_fatura;

  ToplamGelir({
    required this.toplam_gelir,
    required this.gecikmis_fatura,
  });

  @override
  List<Object?> get props => [
        this.toplam_gelir,
        this.gecikmis_fatura,
      ];
}

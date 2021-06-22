import 'package:equatable/equatable.dart';

class ToplamKar extends Equatable {
  final double toplam_kar;
  final double gecikmis_fatura;

  ToplamKar({
    required this.toplam_kar,
    required this.gecikmis_fatura,
  });

  @override
  List<Object?> get props => [
        this.toplam_kar,
        this.gecikmis_fatura,
      ];
}

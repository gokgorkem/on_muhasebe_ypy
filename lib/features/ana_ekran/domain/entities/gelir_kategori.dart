import 'package:equatable/equatable.dart';

class GelirKategori extends Equatable {
  final int gelir_kategori;
  final double gelir_toplam_kar;

  GelirKategori({
    required this.gelir_kategori,
    required this.gelir_toplam_kar,
  });

  @override
  List<Object?> get props => [
        this.gelir_kategori,
        this.gelir_toplam_kar,
      ];
}

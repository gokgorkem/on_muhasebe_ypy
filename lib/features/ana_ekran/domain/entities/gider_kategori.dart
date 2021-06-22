import 'package:equatable/equatable.dart';

class GiderKategori extends Equatable {
  final int gider_kategori;
  final double gider_toplam_kar;

  GiderKategori({
    required this.gider_kategori,
    required this.gider_toplam_kar,
  });

  @override
  List<Object?> get props => [
        this.gider_kategori,
        this.gider_toplam_kar,
      ];
}

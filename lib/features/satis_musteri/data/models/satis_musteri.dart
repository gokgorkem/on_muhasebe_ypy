import 'package:equatable/equatable.dart';

class Musteri extends Equatable {
  final int musteriID;
  final String isim;
  final String e_posta;
  final double odeme_durumu;
  final bool is_active;

  Musteri({
    required this.musteriID,
    required this.isim,
    required this.e_posta,
    required this.odeme_durumu,
    required this.is_active,
  });

  @override
  List<Object?> get props => [
        this.musteriID,
        this.isim,
        this.e_posta,
        this.odeme_durumu,
        this.is_active
      ];
}

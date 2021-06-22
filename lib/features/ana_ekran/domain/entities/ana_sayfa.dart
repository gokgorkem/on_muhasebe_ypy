import 'package:equatable/equatable.dart';
import 'package:on_muhasebe/features/ana_ekran/domain/entities/gelir_kategori.dart';
import 'package:on_muhasebe/features/ana_ekran/domain/entities/gider_kategori.dart';
import 'package:on_muhasebe/features/ana_ekran/domain/entities/hesap_bilgi.dart';
import 'package:on_muhasebe/features/ana_ekran/domain/entities/son_gelirler.dart';
import 'package:on_muhasebe/features/ana_ekran/domain/entities/son_giderler.dart';
import 'package:on_muhasebe/features/ana_ekran/domain/entities/toplam_gelir.dart';
import 'package:on_muhasebe/features/ana_ekran/domain/entities/toplam_gider.dart';
import 'package:on_muhasebe/features/ana_ekran/domain/entities/toplam_kar.dart';
import 'package:on_muhasebe/features/ana_ekran/domain/entities/yillik_chart.dart';

class AnaSayfa extends Equatable {
  final GelirKategori gelir_kategori;
  final GiderKategori giderKategori;
  final HesapBilgi hesapBilgi;
  final SonGelirler sonGelirler;
  final SonGiderler sonGiderler;
  final ToplamGelir toplamGelir;
  final ToplamGider toplamGider;
  final ToplamKar toplamKar;
  final YillikChart yillikChart;

  AnaSayfa({
    required this.gelir_kategori,
    required this.giderKategori,
    required this.hesapBilgi,
    required this.sonGelirler,
    required this.sonGiderler,
    required this.toplamGelir,
    required this.toplamGider,
    required this.toplamKar,
    required this.yillikChart,
  });

  @override
  List<Object?> get props => [
        this.gelir_kategori,
        this.giderKategori,
        this.hesapBilgi,
        this.sonGelirler,
        this.sonGiderler,
        this.toplamGelir,
        this.toplamGider,
        this.toplamKar,
        this.yillikChart,
      ];
}

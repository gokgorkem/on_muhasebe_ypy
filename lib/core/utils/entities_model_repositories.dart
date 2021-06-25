import 'package:on_muhasebe/core/utils/model_base.dart';

class EntitiesModelRepositories {
  List<EntitiesModel> urunHizmetler = List.generate(
      50,
      (index) => EntitiesModel(properties: [
            "Ali$index",
            "kategori $index",
            "satisFiyati $index",
            "alis $index"
          ]));
  EntitiesModel urunHizmetlerHeader = EntitiesModel(
      properties: ["isim ", "kategori ", "satisFiyati ", "alis "]);
  List<EntitiesModel> musteriler = List.generate(
      50,
      (index) => EntitiesModel(properties: [
            "musteri $index",
            "eposta $index",
            "odeme durumu $index",
            "etkin $index"
          ]));
  EntitiesModel musterilerHeader = EntitiesModel(
      properties: ["musteri ", "eposta ", "odeme durumu ", "etkin "]);
  List<EntitiesModel> satisFaturalar = List.generate(
      50,
      (index) => EntitiesModel(properties: [
            "musteri $index",
            "tutar $index",
            "fatura tarih $index",
            "vade tarih $index",
            "durum $index",
          ]));
  EntitiesModel satisFaturalarHeader = EntitiesModel(properties: [
    "musteri ",
    "tutar ",
    "fatura tarih ",
    "vade tarih ",
    "durum ",
  ]);
  List<EntitiesModel> tahsilatlar = List.generate(
      50,
      (index) => EntitiesModel(properties: [
            "tarih $index",
            "musteri $index",
            "tutar $index",
            "kategori $index",
            "hesap $index",
          ]));
  EntitiesModel tahsilatlarHeader = EntitiesModel(properties: [
    "tarih ",
    "musteri ",
    "tutar ",
    "kategori ",
    "hesap ",
  ]);
  List<EntitiesModel> tedarikciler = List.generate(
      50,
      (index) => EntitiesModel(properties: [
            "tedarikci $index",
            "eposta $index",
            "odeme durumu $index",
            "etkin $index"
          ]));
  EntitiesModel tedarikcilerHeader = EntitiesModel(
      properties: ["tedarikci ", "eposta ", "odeme durumu ", "etkin "]);
  List<EntitiesModel> alisFaturalar = List.generate(
      50,
      (index) => EntitiesModel(properties: [
            "tedarikci $index",
            "tutar $index",
            "fatura tarih $index",
            "vade tarih $index",
            "durum $index",
          ]));
  EntitiesModel alisFaturalarHeader = EntitiesModel(properties: [
    "tedarikci ",
    "tutar ",
    "fatura tarih ",
    "vade tarih ",
    "durum ",
  ]);
  List<EntitiesModel> odemeler = List.generate(
      50,
      (index) => EntitiesModel(properties: [
            "tarih $index",
            "tedarkci $index",
            "tutar $index",
            "kategori $index",
            "hesap $index",
          ]));
  EntitiesModel odemelerHeader = EntitiesModel(properties: [
    "tarih ",
    "tedarkci ",
    "tutar ",
    "kategori ",
    "hesap ",
  ]);
  List<EntitiesModel> hesaplar = List.generate(
      50,
      (index) => EntitiesModel(properties: [
            "banka isim $index",
            "iban $index",
            "bakiye $index",
            "durum $index",
          ]));
  EntitiesModel hesaplarHeader = EntitiesModel(properties: [
    "banka isim ",
    "iban ",
    "bakiye ",
    "durum ",
  ]);
  List<EntitiesModel> islemler = List.generate(
      50,
      (index) => EntitiesModel(properties: [
            "tarih $index",
            "tutar $index",
            "tur $index",
            "kategori $index",
            "hesap $index",
            "acıklama $index",
          ]));
  EntitiesModel islemlerHeader = EntitiesModel(properties: [
    "tarih ",
    "tutar ",
    "tur ",
    "kategori ",
    "hesap ",
    "acıklama ",
  ]);
  List<EntitiesModel> transferler = List.generate(
      50,
      (index) => EntitiesModel(properties: [
            "tarih $index",
            "gön hesap $index",
            "alan hesap $index",
            "tutar $index",
          ]));
  EntitiesModel transferlerHeader = EntitiesModel(properties: [
    "tarih ",
    "gön hesap ",
    "alan hesap ",
    "tutar ",
  ]);
}

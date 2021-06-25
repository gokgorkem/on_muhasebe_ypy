import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/utils/constants.dart';
import 'package:on_muhasebe/features/alis_fatura/presentation/pages/alis_fatura_page.dart';
import 'package:on_muhasebe/features/alis_odeme/presentation/pages/alis_odeme_page.dart';
import 'package:on_muhasebe/features/alis_tedarikci/presentation/pages/alis_tedarikci_page.dart';
import 'package:on_muhasebe/features/ana_ekran/presentation/pages/ana_sayfa_page.dart';
import 'package:on_muhasebe/features/ayarlar/presentation/pages/ayarlar_page.dart';
import 'package:on_muhasebe/features/banka_hesap/presentation/pages/banka_hesap_page.dart';
import 'package:on_muhasebe/features/banka_islem/presentation/pages/banka_islem_page.dart';
import 'package:on_muhasebe/features/banka_transfer/presentation/pages/banka_transfer_page.dart';
import 'package:on_muhasebe/features/raporlar/presentation/pages/raporlar_page.dart';
import 'package:on_muhasebe/features/satis_fatura/presentation/pages/satis_fatura_page.dart';
import 'package:on_muhasebe/features/satis_musteri/presentation/pages/satis_musteri_page.dart';
import 'package:on_muhasebe/features/satis_tahsilat/presentation/pages/satis_tahsilat_page.dart';
import 'package:on_muhasebe/features/urun_hizmet/presentation/pages/urun_hizmet_page.dart';
import 'package:on_muhasebe/features/yeni_fatura_alislar/presentation/pages/yeni_fatura_alislar_page.dart';
import 'package:on_muhasebe/features/yeni_fatura_satislar/presentation/pages/yeni_fatura_satislar_page.dart';
import 'package:on_muhasebe/features/yeni_hesap_bankalar/presentation/pages/yeni_hesap_bankalar_page.dart';
import 'package:on_muhasebe/features/yeni_musteri_satislar/presentation/pages/yeni_musteri_satislar_page.dart';
import 'package:on_muhasebe/features/yeni_odeme_alislar/presentation/pages/yeni_odeme_alislar_page.dart';
import 'package:on_muhasebe/features/yeni_tahsilat_satislar/presentation/pages/yeni_tahsilat_satislar_page.dart';
import 'package:on_muhasebe/features/yeni_tedarikci_alislar/presentation/pages/yeni_tedarikci_alislar_page.dart';
import 'package:on_muhasebe/features/yeni_transfer_bankalar/presentation/pages/yeni_transfer_bankalar_page.dart';
import 'package:on_muhasebe/features/yeni_urun_hizmet/presentation/pages/yeni_urun_hizmet_page.dart';

class PageRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HOME_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => AnaSayfaPage());
      case URUN_HIZMET_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => UrunHizmetPage());
      case SATISLAR_FATURALAR_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => SatislarFaturaPage());
      case SATISLAR_MUSTERILER_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => SatislarMusteriPage());
      case SATISLAR_TAHSILATLAR_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => SatislarTahsilatlarPage());
      case ALISLAR_FATURALAR_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => AlislarFaturalarPage());
      case ALISLAR_ODEMELER_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => AlislarOdemePage());
      case ALISLAR_TEDARIKCILER_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => AlislarTedarikciPage());
      case BANKALAR_HESAPLAR_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => BankaHesapPage());
      case BANKALAR_ISLEMLER_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => BankaIslemPage());
      case BANKALAR_TRANSFERLER_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => BankaTransferPage());
      case AYARLAR_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => AyarlarPage());
      case RAPORLAR_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => RaporlarPage());
      case YENI_URUN_HIZMET_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => YeniUrunHizmetPage());
      case ALISLAR_YENI_FATURA_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => YeniFaturaAlislarPage());
      case ALISLAR_YENI_ODEME_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => YeniOdemeAlislarPage());
      case ALISLAR_YENI_TEDARIKCI_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => YeniTedarikciAlislarPage());
      case SATISLAR_YENI_MUSTERI_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => YeniMusteriSatislarPage());
      case SATISLAR_YENI_FATURA_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => YeniFaturaSatislarPage());
      case SATISLAR_YENI_TAHSILAT_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => YeniFaturaSatislarPage());
      case BANKALAR_YENI_HESAP_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => YeniHesapBankalarPage());
      case BANKALAR_YENI_TRANSFER_PAGE_ROUTE:
        return MaterialPageRoute(builder: (_) => YeniTransferBankalarPage());
      default:
        return MaterialPageRoute(builder: (_) => YeniTahsilatSatislarPage());
    }
  }
}

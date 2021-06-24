import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/yeni_hesap_bankalar/presentation/widgets/widgets.dart';

class YeniHesapBankalarPage extends StatefulWidget {
  const YeniHesapBankalarPage({Key? key}) : super(key: key);

  @override
  _YeniHesapBankalarPageState createState() => _YeniHesapBankalarPageState();
}

class _YeniHesapBankalarPageState extends State<YeniHesapBankalarPage> {
  @override
  Widget build(BuildContext context) {
    return PageRoot.withBody(
      body: YeniHesapBankalarBody(),
    );
  }
}

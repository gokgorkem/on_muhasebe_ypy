import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/banka_hesap/presentation/widgets/banka_hesap_body.dart';

class BankaHesapPage extends StatefulWidget {
  const BankaHesapPage({Key? key}) : super(key: key);

  @override
  _BankaHesapPageState createState() => _BankaHesapPageState();
}

class _BankaHesapPageState extends State<BankaHesapPage> {
  @override
  Widget build(BuildContext context) {
    return PageRoot.withBody(
      body: BankaHesapBody(),
    );
  }
}

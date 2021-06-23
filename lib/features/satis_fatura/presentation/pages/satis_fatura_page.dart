import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/satis_fatura/presentation/widgets/satis_fatura_body.dart';

class SatislarFaturaPage extends StatefulWidget {
  const SatislarFaturaPage({Key? key}) : super(key: key);

  @override
  _SatislarFaturaPageState createState() => _SatislarFaturaPageState();
}

class _SatislarFaturaPageState extends State<SatislarFaturaPage> {
  @override
  Widget build(BuildContext context) {
    return PageRoot.withBody(
      body: SatislarFaturaBody(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/yeni_tahsilat_satislar/presentation/widgets/widgets.dart';

class YeniTahsilatSatislarPage extends StatefulWidget {
  const YeniTahsilatSatislarPage({Key? key}) : super(key: key);

  @override
  _YeniTahsilatSatislarPageState createState() =>
      _YeniTahsilatSatislarPageState();
}

class _YeniTahsilatSatislarPageState extends State<YeniTahsilatSatislarPage> {
  @override
  Widget build(BuildContext context) {
    return PageRoot.withBody(
      body: YeniTahsilatSatislarBody(),
    );
  }
}

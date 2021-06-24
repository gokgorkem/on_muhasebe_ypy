import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/yeni_musteri_satislar/presentation/widgets/widgets.dart';

class YeniMusteriSatislarPage extends StatefulWidget {
  const YeniMusteriSatislarPage({Key? key}) : super(key: key);

  @override
  _YeniMusteriSatislarPageState createState() =>
      _YeniMusteriSatislarPageState();
}

class _YeniMusteriSatislarPageState extends State<YeniMusteriSatislarPage> {
  @override
  Widget build(BuildContext context) {
    return PageRoot.withBody(
      body: YeniMusteriSatislarBody(),
    );
  }
}

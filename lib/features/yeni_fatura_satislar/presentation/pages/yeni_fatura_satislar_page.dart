import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/yeni_fatura_satislar/presentation/widgets/widgets.dart';

class YeniFaturaSatislarPage extends StatefulWidget {
  const YeniFaturaSatislarPage({Key? key}) : super(key: key);

  @override
  _YeniFaturaSatislarPageState createState() => _YeniFaturaSatislarPageState();
}

class _YeniFaturaSatislarPageState extends State<YeniFaturaSatislarPage> {
  @override
  Widget build(BuildContext context) {
    return PageRoot.withBody(
      body: YeniFaturaSatislarBody(),
    );
  }
}

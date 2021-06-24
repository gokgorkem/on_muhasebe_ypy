import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/yeni_fatura_alislar/presentation/widgets/widgets.dart';

class YeniFaturaAlislarPage extends StatefulWidget {
  const YeniFaturaAlislarPage({Key? key}) : super(key: key);

  @override
  _YeniFaturaAlislarPageState createState() => _YeniFaturaAlislarPageState();
}

class _YeniFaturaAlislarPageState extends State<YeniFaturaAlislarPage> {
  @override
  Widget build(BuildContext context) {
    return PageRoot.withBody(
      body: YeniFaturaAlislarBody(),
    );
  }
}

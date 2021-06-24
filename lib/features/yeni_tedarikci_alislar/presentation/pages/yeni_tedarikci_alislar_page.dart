import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/yeni_tedarikci_alislar///presentation/widgets/widgets.dart';

class YeniTedarikciAlislarPage extends StatefulWidget {
  const YeniTedarikciAlislarPage({Key? key}) : super(key: key);

  @override
  _YeniTedarikciAlislarPageState createState() => _YeniTedarikciAlislarPageState();
}

class _YeniTedarikciAlislarPageState extends State<YeniTedarikciAlislarPage> {
  @override
  Widget build(BuildContext context) {
    return PageRoot.withBody(
      body: YeniTedarikciAlislarBody(),
    );
  }
}

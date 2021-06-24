import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/yeni_odeme_alislar//presentation/widgets/widgets.dart';

class YeniOdemeAlislarPage extends StatefulWidget {
  const YeniOdemeAlislarPage({Key? key}) : super(key: key);

  @override
  _YeniOdemeAlislarPageState createState() => _YeniOdemeAlislarPageState();
}

class _YeniOdemeAlislarPageState extends State<YeniOdemeAlislarPage> {
  @override
  Widget build(BuildContext context) {
    return PageRoot.withBody(
      body: YeniOdemeAlislarBody(),
    );
  }
}

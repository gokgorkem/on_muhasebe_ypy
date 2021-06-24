import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/yeni_urun_hizmet/presentation/widgets/widgets.dart';

class YeniUrunHizmetPage extends StatefulWidget {
  const YeniUrunHizmetPage({Key? key}) : super(key: key);

  @override
  _YeniUrunHizmetPageState createState() => _YeniUrunHizmetPageState();
}

class _YeniUrunHizmetPageState extends State<YeniUrunHizmetPage> {
  @override
  Widget build(BuildContext context) {
    return PageRoot.withBody(
      body: YeniUrunHizmetBody(),
    );
  }
}

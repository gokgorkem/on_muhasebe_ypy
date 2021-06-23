import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/satis_tahsilat/presentation/widgets/satis_tahsilar_body.dart';

class SatislarTahsilatlarPage extends StatefulWidget {
  const SatislarTahsilatlarPage({Key? key}) : super(key: key);

  @override
  _SatislarTahsilatlarPageState createState() =>
      _SatislarTahsilatlarPageState();
}

class _SatislarTahsilatlarPageState extends State<SatislarTahsilatlarPage> {
  @override
  Widget build(BuildContext context) {
    return PageRoot.withBody(
      body: SatislarTahsilatlarBody(),
    );
  }
}

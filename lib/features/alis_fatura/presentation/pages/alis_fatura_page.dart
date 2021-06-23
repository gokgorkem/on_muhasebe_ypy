import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/alis_fatura/presentation/widgets/alis_fatura_body.dart';

class AlislarFaturalarPage extends StatefulWidget {
  AlislarFaturalarPage({Key? key}) : super(key: key);

  @override
  _AlislarFaturalarPageState createState() => _AlislarFaturalarPageState();
}

class _AlislarFaturalarPageState extends State<AlislarFaturalarPage> {
  @override
  Widget build(BuildContext context) {
    return PageRoot.withBody(
      body: AlislarFaturalarBody(),
    );
  }
}

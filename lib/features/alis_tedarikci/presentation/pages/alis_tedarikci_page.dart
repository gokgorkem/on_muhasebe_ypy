import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/alis_tedarikci/presentation/widgets/alis_tedarikci_body.dart';

class AlislarTedarikciPage extends StatefulWidget {
  const AlislarTedarikciPage({Key? key}) : super(key: key);

  @override
  _AlislarTedarikciPageState createState() => _AlislarTedarikciPageState();
}

class _AlislarTedarikciPageState extends State<AlislarTedarikciPage> {
  @override
  Widget build(BuildContext context) {
    return PageRoot.withBody(
      body: AlislarTedarikciBody(),
    );
  }
}

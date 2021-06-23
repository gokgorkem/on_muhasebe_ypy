import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/satis_musteri/presentation/widgets/satis_musteri_body.dart';

class SatislarMusteriPage extends StatefulWidget {
  const SatislarMusteriPage({Key? key}) : super(key: key);

  @override
  _SatislarMusteriPageState createState() => _SatislarMusteriPageState();
}

class _SatislarMusteriPageState extends State<SatislarMusteriPage> {
  @override
  Widget build(BuildContext context) {
    return PageRoot.withBody(
      body: SatislarMusteriBody(),
    );
  }
}

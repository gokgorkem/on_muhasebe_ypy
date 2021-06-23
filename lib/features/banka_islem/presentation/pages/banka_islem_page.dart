import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/banka_islem/presentation/widgets/banka_islem_body.dart';

class BankaIslemPage extends StatefulWidget {
  const BankaIslemPage({Key? key}) : super(key: key);

  @override
  _BankaIslemPageState createState() => _BankaIslemPageState();
}

class _BankaIslemPageState extends State<BankaIslemPage> {
  @override
  Widget build(BuildContext context) {
    return PageRoot.withBody(
      body: BankaIslemBody(),
    );
  }
}

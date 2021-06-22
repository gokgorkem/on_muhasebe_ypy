import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/ana_ekran/presentation/widgets/ana_sayfa_body.dart';

class AnaSayfaPage extends StatefulWidget {
  const AnaSayfaPage({Key? key}) : super(key: key);

  @override
  _AnaSayfaPageState createState() => _AnaSayfaPageState();
}

class _AnaSayfaPageState extends State<AnaSayfaPage> {
  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  buildBody(BuildContext context) {
    return PageRoot.withBody(
      body: AnaSayfaBody(),
    );
  }
}

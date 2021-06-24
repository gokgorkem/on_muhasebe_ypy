import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/ayarlar/presentation/widgets/ayarlar_body.dart';

class AyarlarPage extends StatefulWidget {
  const AyarlarPage({Key? key}) : super(key: key);

  @override
  _AyarlarPageState createState() => _AyarlarPageState();
}

class _AyarlarPageState extends State<AyarlarPage> {
  @override
  Widget build(BuildContext context) {
    return PageRoot.withBody(
      body: AyarlarBody(),
    );
  }
}
